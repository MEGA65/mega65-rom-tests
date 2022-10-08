    1 a=usr(55)
    2 a=usr("=linefloat")
   10 graphicclr:screendef1,1,1,1:screenopen 1:screenset 1,1
   30 u=0
   40 do
   50   line rnd(0)*640,rnd(0)*400
   60   u=u+1
   70   if u<>int(u) then print u;"<>";int(u);"!":goto 999
   80 loop until u>=1000
   90 screen close 1
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
