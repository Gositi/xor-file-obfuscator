# xor-file-obfuscator
Possible Chat Control workaround for funsies

## What is this?
This is a very simple attempt at a workaround for the EU legislative proposal called Chat Control.
If Chat Control gets passed it will infer mass surveillance on an Orwellian (1984) level.
The program simply does an XOR operation of every byte with `0xAA` in order to prevent the scanning software from interpreting the file.
This is not encryption, only obfuscation.
Manual checking of the file could likely easily deobfuscate the file, but automated tools will (hopefully) be unable to properly deobfuscate it although I can't guarantee anything.

## How do I use this?
You run the executable from the command line with two arguments, we can call them `source` and `target`.
For obfuscation `source` is the original file and `target` is the desired filename of the obfuscated file.
For deobfuscation you simply swap them around.

**If you aren't sure which file to download**, most likely you should pick the `.exe`.
For help on how to run it from the command line, use your preferred search engine.

It is possible to run this on Android if you are somewhat techy.
One such way would be to install Termux and compile this on there.
Using plain `$ gcc main.c` without any options would likely suffice.

## How can I use this?
For obfuscating files, for example to avoid Chat Control or other automated content scanning.
Using this program for obfuscating files containing illegal content is strictly prohibited.
This program is built with the intent to make the world better, not to help those who make the world worse.

## Building
The following assumes a Linux system with `gcc` (and `mingw-w64` for building Windows executables):
- Linux binaries: `$ make` to compile and `# make install` to install (`# make uninstall` to uninstall),
- Windows executables: `$ make windows` to compile.
