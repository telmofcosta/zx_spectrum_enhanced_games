# Chuckie Egg (Enhanced): AY tunes

The four AY tunes of the enhanced 128K *Chuckie Egg*, taken out of the game so
they can be played in an AY music player. Each tune comes in two formats:

- `.ay` (ZXAYEMUL): the most common format for ZX Spectrum AY music. The file
  holds a small Z80 player and the tune's register data, and loops at the end.
- `.psg`: a plain log of the AY registers, one block per 50 Hz frame. It
  plays once.

Both formats hold exactly the register values the game's music player sends
to the AY chip, frame by frame, for one pass of each tune.

## Tunes

| File               | Tune                                     | Where it plays in the game                            | Length |
| ------------------ | ---------------------------------------- | ----------------------------------------------------- | -----: |
| `pack-ententanz`   | Der Ententanz (Werner Thomas)            | Title screen                                          |   1:08 |
| `pack-death`       | Romance Anónimo, first 8 bars            | When Harry loses a life                               |   0:05 |
| `pack-entertainer` | The Entertainer (Scott Joplin)           | During play; it starts on odd levels                  |   4:03 |
| `pack-maple`       | Maple Leaf Rag (Scott Joplin)            | During play; it starts on even levels                 |   2:19 |

The two rags come from the Mutopia Project editions, which are marked public
domain.

## Playing them

Open a file in any AY music player that reads `.ay` or `.psg` files, such
as Telly Tunes, Ay_Emul or ZXTune. The files have been tested with Telly
Tunes, where every frame matches the game's music.

The player in the `.ay` files writes to the AY chip through the usual 128K
ports (`0xFFFD` selects a register, `0xBFFD` writes it). It sits at `0x8000`,
and the tune data starts at `0x8100`.
