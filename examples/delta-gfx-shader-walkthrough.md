# Delta Gfx Shader Lab Walkthrough

I use this file as a small checklist before changing the Dart implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | geometry span | 151 | ship |
| stress | atlas pressure | 188 | ship |
| edge | shader drift | 111 | watch |
| recovery | render budget | 122 | watch |
| stale | geometry span | 229 | ship |

Start with `stale` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `geometry span` against `shader drift`, not the raw score alone.
