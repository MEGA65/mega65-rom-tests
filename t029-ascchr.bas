   10 dim a$(255)
   20 forr=0to255:a$(r)=chr$(r)+" ":nextr
   30 forr=0to255
   40 if asc(a$(r))<>r then list 40:stop
   50 next
  900 dload "runner"
