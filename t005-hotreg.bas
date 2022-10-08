   10 bank 128
   15 poke $d060,1 : rem shift screen memory by 1 byte
   20 a=rnd(0)
   30 if peek($d060)<>1 then print"error: hotreg triggered by rnd!":stop
   40 poke$d060,0 : rem ...and back to normal
   50 dload "runner"
