   10 a=usr(5)
   20 a=usr("=hotreg")
   30 bank 128
   40 poke $d060,1 : rem shift screen memory by 1 byte
   50 a=rnd(0)
   60 if peek($d060)<>1 then a = usr("/reason: hotreg triggered by rnd!"):goto 999
   70 poke$d060,0 : rem ...and back to normal
  998 a=usr("/hotreg works!"):a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("/hotreg fails!"):a=usr("f"):a=usr("d"):end:rem fail
