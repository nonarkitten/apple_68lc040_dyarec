# What the licence does and does not cover

This repository contains two different kinds of material.

## 1. Apple's code — not ours to license

The emulator itself is the work of Apple Computer, Inc. and remains under
whatever rights Apple holds in it. That covers:

- `Emulator.x`, the binary extracted from a Power Macintosh ROM;
- the instructions in `src/`, which are a transcription of that binary
  into assembly language and reassemble to it exactly.

Nobody involved in this repository claims any right in that code or is in
a position to grant one. It is reproduced here for study, commentary and
research into a long-discontinued product — to help people who write
emulators understand how this one worked. If you want to do something
with the code beyond studying it, the question of permission is between
you and Apple.

The three patents in `docs/patents/` are public documents published by
the US Patent and Trademark Office. All three have expired.

## 2. Everything else — dedicated to the public domain

Everything in this repository that is *not* Apple's code is original to
this project:

- the documentation in `docs/` (other than the patents);
- the labels, names and comments in `src/`;
- the tools in `tools/`, the `Makefile` and the include files;
- `README.md`, `TODO.md`, `CLAUDE.md` and this notice.

To the extent possible under law, the authors of that material have
waived all copyright and related rights in it under the
[CC0 1.0 Universal](LICENSE) public domain dedication. Use it however you
like, without asking and without attribution.

## Trademarks

Apple, Macintosh, Power Macintosh and Mac OS are trademarks of Apple Inc.
PowerPC is a trademark of International Business Machines Corporation.
This project is not affiliated with or endorsed by either company.

---

*This notice describes the intent of the people who made the repository.
It is not legal advice.*
