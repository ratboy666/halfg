# halfg

Playing around with UTF-8 and MicroSoft MBASIC. Uses 2x2 half-cell graphics to allow plotting on
a 160x48 grid in xterm or other terminal emulator.

Just good fun. Also contains August 1974 Popular Electronics "Scopewriter" font. Again, just for
fun -- renders "HELLO" in that font in half-cell graphics.

Ported to xybasic. halfg.bas is the original mbasic; xy1.bas, xy2.bas... are the xybasic port with
sucessive refinements. Included xycpmfp.com (interpreter needed).  WIDTH 255 is needed.

xy1.bas - simple conversion of halfg.bas
xy2.bas - exploit binary constants, reduces font definitions
xy3.bas - replace 160x48 d%() with 80x24, bit or to set values

