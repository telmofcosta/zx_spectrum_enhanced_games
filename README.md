# ZX Spectrum Enhanced Games

This repository is about making enhancements to ZX Spectrum games.

## Interests

I am interested in enhancements to old games in general—recolouring, smoother
graphics, better sound, and other improvements—while keeping the original game
as intact as possible.

I have a special interest in ULA extensions. The ULA is the Spectrum chip that
generates the display, and extensions to it (real or emulated) give old games
more colours and better graphics than the original hardware allows.

All of my experiments are built and tested on my own ZX Spectrum emulator,
[telly_peppr](https://github.com/telmofcosta/telly_peppr). It is my playground for
bringing graphics extensions to life, currently implementing **Spec256**,
**ULAX**, and **Gigascreen**.

## Current developments

- **[Chuckie Egg](Chuckie%20Egg/README.md)** – ULAX recolouring, a reworked
  screen-rendering routine, and 128k AY music.


## References

Some of the ULA extensions and related graphics enhancements:

- **[ULAX](https://spectrumcomputing.co.uk/forums/viewtopic.php?p=34382)** – an extended ULA with an emulator and an FPGA core. It allows sprites
  and backgrounds in existing games to be fully recoloured.
- **[Spec256](https://spectrumcomputing.co.uk/tool/13/Spec256)** – a recolouring project that runs a second, 256-colour graphics
  processor in parallel with the Spectrum, so existing games can be shown in
  8-bit colour.
- **[ZX-Poly](https://github.com/raydac/zxpoly)** – a multi-CPU Spectrum
  architecture using four synchronised Z80 processors in parallel, complete with
  an emulator and sprite editor so existing games can be recoloured with up to
  16 colours per pixel.
- **[ULAplus](https://zxdesign.itch.io/ulaplus)** – an open specification for an enhanced ULA with a programmable
  64-colour palette. It is implemented in several emulators and in clones such
  as the ZX-Uno.
- **[Timex HiColor and HiRes](https://en.wikipedia.org/wiki/ZX_Spectrum_graphic_modes)** – display modes from the Timex TC2048/TS2068:
  HiColor gives one attribute per 8×1 pixel line, and HiRes gives 512×192
  pixels. Many clones and FPGA cores support them.
- **[Radastan mode](https://github.com/zxdos/zxuno)** – a 128×96 mode with 16 colours per pixel, introduced on the
  ZX-Uno. It uses the ULAplus palette.
- **[ZX Spectrum Next](https://www.specnext.com/)** ([FPGA source](https://gitlab.com/SpectrumNext/ZX_Spectrum_Next_FPGA)) – adds Layer 2 bitmap modes, a tilemap, and hardware
  sprites on top of the original ULA screen.
- **[Pentagon 16-colour mode](https://en.wikipedia.org/wiki/ZX_Spectrum_graphic_modes)** – a mode on some Russian Spectrum clones with
  16 colours per pixel.
- **[Gigascreen](https://en.wikipedia.org/wiki/ZX_Spectrum_graphic_modes)** – a software technique, not hardware. It alternates two screens
  every frame so the colours blend into extra shades.
