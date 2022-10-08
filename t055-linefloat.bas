   10 graphicclr:screendef1,1,1,1:screenopen 1:screenset 1,1
   30 u=0
   40 do
   50   line rnd(0)*640,rnd(0)*400
   60   u=u+1
   70   if u<>int(u) then print u;"<>";int(u);"!":stop
   80 loop until u>=1000
   90 screen close 1
  900 dload "runner"
