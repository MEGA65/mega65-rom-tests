    1 a=usr(95)
    2 a=usr("=resnames1")
   10 dim ds$(5)
   20 fori=1to5:ds$(i)=str$(i):next
   30 fori=1to5
   40 if ds$(i)<>str$(i) then goto 999
   50 nexti
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
