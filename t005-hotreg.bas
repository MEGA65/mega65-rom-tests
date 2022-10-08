   10 a=usr(1)
   20 a=usr("=hotreg")
   30 bank 128
   40 poke $d060,1 : rem shift screen memory by 1 byte
   50 a=rnd(0)
   60 if peek($d060)<>1 then print"error: hotreg triggered by rnd!":a=usr("f"):a=usr("d"):end
   70 poke$d060,0 : rem ...and back to normal
   80 a=usr("p")
   90 a=usr("d")
