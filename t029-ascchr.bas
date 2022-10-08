    1 a=usr(29)
    2 a=usr("=ascchr")
   10 dim a$(255)
   20 forr=0to255:a$(r)=chr$(r)+" ":nextr
   30 forr=0to255
   40 if asc(a$(r))<>r then goto 999
   50 next
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
