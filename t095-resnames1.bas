   10 dim ds$(5)
   20 fori=1to5:ds$(i)=str$(i):next
   30 fori=1to5
   40 if ds$(i)<>str$(i) then list 40:stop
   50 nexti
  900 dload "runner"
