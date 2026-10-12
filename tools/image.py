"""The emulator image, and what the source says about it.

The other tools need to know three things about the 655,360 bytes of
Emulator.x: where the labels are, which bytes are data rather than code,
and what the registers are called.  All three are read from src/, which is
the only description of the image there is:

    labels        "name:" lines
    data          the .long, .short, .byte, .ascii and .space directives
    names         the #define lines of src/include/*.inc

To turn source lines into offsets the files are walked in the order
src/Emulator.S includes them, counting bytes: four for an instruction, the
operands of a data directive, the padding of an ALIGN.  The walk has to end
exactly at the end of the image, which catches a statement it miscounted.

    Image().labels        offset -> name (where several share an offset, the last)
    Image().label_addrs   name -> offset
    Image().kind          word offset -> ('insn', Insn) or ('data', (start, end, directive))
    Image().lines         offset -> the source lines of the statement there, with the
                          comments and labels above it
    Image().where         offset -> (file, line number) of that statement
    Image().table_users   offset of a routine -> opcodes whose table entry branches to it
"""

import collections
import os
import re
import struct
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import ppc      # noqa: E402

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

XCOFF_HEADER_SIZE = 0x3C
IMAGE_SIZE = 0xA0000
TABLE_START = 0x20000           # OpcodeTblTop
TOP_FILE = 'src/Emulator.S'

# Labels that only say where something is: branch targets inside a routine
# (name_L3), instruction templates (T_12A40), and the few places still known
# by offset (L_0E110, D_0C960).
LOCAL_LABEL = re.compile(r'[LDT]_[0-9A-F]{5}|.*_L[0-9]+')

DATA_UNIT = {'.long': 4, '.short': 2, '.byte': 1}


def fail(message):
    sys.exit('image.py: ' + message)


def parse_defines(path):
    """Return {section: [(name, value)]} for an include file whose sections
    are introduced by `//@ name` marker lines."""
    sections = collections.OrderedDict()
    current = None
    pattern = re.compile(r'#define\s+(\w+)\s+(0[xX][0-9A-Fa-f]+|\d+)\b')
    with open(path, encoding='utf-8') as handle:
        for line in handle:
            marker = re.match(r'//@\s*(\w+)', line)
            if marker:
                current = marker.group(1)
                sections.setdefault(current, [])
                continue
            match = pattern.match(line.strip())
            if match and current:
                sections[current].append((match.group(1), int(match.group(2), 0)))
    return sections


def generalise(text):
    """Replace specific register numbers and quick constants in a 68K
    instruction with placeholders so that families can be summarised."""
    text = re.sub(r'\bD[0-7]\b', 'Dn', text)
    text = re.sub(r'\bA[0-7]\b', 'An', text)
    text = re.sub(r'#\$[0-9A-F]{2}\b', '#<q>', text)
    text = re.sub(r'#[0-9]+\b', '#<q>', text)
    text = re.sub(r'\$A[0-9A-F]{3}', '$Axxx', text)
    return re.sub(r'\s+', ' ', text)


def without_comment(line):
    """The line up to a // comment (none of the strings in the source
    contains one)."""
    at = line.find('//')
    return line if at < 0 else line[:at]


class Image:
    def __init__(self):
        with open(os.path.join(ROOT, 'Emulator.x'), 'rb') as handle:
            blob = handle.read()
        self.image = blob[XCOFF_HEADER_SIZE:XCOFF_HEADER_SIZE + IMAGE_SIZE]
        if len(self.image) != IMAGE_SIZE:
            fail('Emulator.x is shorter than expected')
        self.words = struct.unpack('>%dI' % (IMAGE_SIZE // 4), self.image)

        registers = parse_defines(os.path.join(ROOT, 'src/include/Registers.inc'))
        self.gpr = ['r%d' % n for n in range(32)]
        for name, value in registers.get('gpr', []):
            self.gpr[value] = name
        self.crbit = {value: name for name, value in registers.get('crbit', [])}
        self.flag_bits = frozenset(self.crbit)
        state = parse_defines(os.path.join(ROOT, 'src/include/EmulatorState.inc'))
        self.state = {value: name for name, value in state.get('state', [])}

        self.labels = {}
        self.label_addrs = {}
        self.data = []                              # (start, end, directive)
        self.lines = collections.defaultdict(list)
        self.where = {}
        self.read_source()

        self.kind = {}
        self.table_users = collections.defaultdict(list)
        self.classify()

    # -- reading the source ------------------------------------------------

    def source_lines(self, path):
        """The lines of a source file and of the files it includes.  The
        files in src/include/ hold names and macros only and are skipped."""
        directory = os.path.dirname(path)
        with open(os.path.join(ROOT, path), encoding='utf-8') as handle:
            for number, line in enumerate(handle, 1):
                line = line.rstrip('\n')
                include = re.match(r'#include\s+"([^"]+)"', line)
                if include is None:
                    yield path, number, line
                elif not include.group(1).startswith('include/'):
                    yield from self.source_lines(os.path.join(directory, include.group(1)))

    def read_source(self):
        location = 0
        pending = []            # comment, blank and label lines waiting for a statement
        for path, number, line in self.source_lines(TOP_FILE):
            text = without_comment(line).strip()
            pending.append(line)
            if not text or text.startswith('#') or text == '.text':
                continue
            label = re.fullmatch(r'([A-Za-z_]\w*):', text)
            if label:
                if label.group(1) in self.label_addrs:
                    fail('%s:%d: label %s defined twice' % (path, number, label.group(1)))
                self.label_addrs[label.group(1)] = location
                self.labels[location] = label.group(1)
                continue
            try:
                size, directive = self.statement_size(text, location)
            except ValueError as error:
                fail('%s:%d: %s' % (path, number, error))
            self.lines[location] += pending
            self.where[location] = (path, number)
            pending = []
            if directive:
                self.data.append((location, location + size, directive))
            location += size
        if location != IMAGE_SIZE:
            fail('the source accounts for %#x bytes; the image has %#x' % (location, IMAGE_SIZE))

    @staticmethod
    def statement_size(text, location):
        """(bytes, data directive or None) for one statement."""
        word, _, rest = text.partition(' ')
        rest = rest.strip()
        if word in DATA_UNIT:
            return DATA_UNIT[word] * (rest.count(',') + 1), word
        if word == '.ascii':
            string = re.fullmatch(r'"([^"\\]*)"', rest)
            if string is None:
                raise ValueError('cannot measure ' + text)
            return len(string.group(1)), word
        if word == '.space':
            return int(rest, 0), word
        align = re.fullmatch(r'ALIGN\((\w+)\)', text)
        if align:
            return -location % int(align.group(1), 0), None
        if word.startswith('.'):
            raise ValueError('unknown directive ' + word)
        if location & 3:
            raise ValueError('instruction at an unaligned offset %#x' % location)
        return 4, None

    # -- what the bytes are ------------------------------------------------

    def classify(self):
        data_words = {}
        for start, end, directive in self.data:
            for addr in range(start & ~3, end, 4):
                data_words[addr] = (start, end, directive)
        for index, word in enumerate(self.words):
            addr = index * 4
            if addr in data_words:
                self.kind[addr] = ('data', data_words[addr])
                continue
            insn = ppc.decode(word, addr, self.flag_bits)
            if insn is None:
                fail('%05X: the source has an instruction here that does not decode' % addr)
            self.kind[addr] = ('insn', insn)

        # Which 68K opcodes reach each routine: the branch targets of the
        # two instructions of each dispatch table entry.
        for opcode in range(0x10000):
            entry = TABLE_START + opcode * 8
            for addr in (entry, entry + 4):
                kind, value = self.kind[addr]
                if kind == 'insn':
                    for operand in value.ops:
                        if operand[0] == 'tgt':
                            self.table_users[operand[1]].append(opcode)

    # -- spelling an instruction the way the source does -------------------

    def crbit_name(self, bit):
        if bit in self.crbit:
            return self.crbit[bit]
        field, cond = bit >> 2, ('lt', 'gt', 'eq', 'so')[bit & 3]
        return cond if field == 0 else '4*cr%d+%s' % (field, cond)

    @staticmethod
    def number(value):
        if -256 < value < 256:
            return str(value)
        return ('-0x%X' % -value) if value < 0 else '0x%X' % value

    def operand(self, operand, insn):
        """Text for one operand of a decoded instruction (branch targets are
        the caller's business)."""
        kind = operand[0]
        if kind == 'r':
            return self.gpr[operand[1]]
        if kind == 'rz':
            return '0' if operand[1] == 0 else self.gpr[operand[1]]
        if kind == 'crf':
            return 'cr%d' % operand[1]
        if kind == 'crb':
            return self.crbit_name(operand[1])
        if kind == 'simm':
            return self.number(operand[1])
        if kind == 'uimm':
            return '0x%04X' % operand[1]
        if kind == 'n':
            return '0x%02X' % operand[1] if insn.mnem == 'mtcrf' else str(operand[1])
        if kind == 'mem':
            displacement, base = operand[1], operand[2]
            base_text = self.operand(base, insn)
            if base[1] == 31 and displacement in self.state:
                return '%s(%s)' % (self.state[displacement], base_text)
            return '%s(%s)' % (self.number(displacement), base_text)
        raise ValueError(operand)
