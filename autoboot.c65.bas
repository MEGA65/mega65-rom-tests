  100 scnclr
  110 if rwindow(2)=40 thenprint chr$(27)+"x";
  120 print "-----------------------"
  130 print "basic65 test suite v1.3
  140 print "-----------------------"
  150 print
  160 bank 5:poke 65280,0
  170 bload "b65support.bin": sys $1600
  170 dload "runner"
