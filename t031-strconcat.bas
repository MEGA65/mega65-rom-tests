    1 a=usr(31)
    2 a=usr("=strconcat")
   10 dim a$(900)
   20 a1$="the quick brown candor "
   25 a2$="jumps over the lazy buba"
   30 for r=0 to 900
   35 a$(r)=a1$
   40 a$(r)=a$(r)+right$(left$("constant",1)+ti$,3)+" "+right$(str$(ti)+"!",2)+" "+a2$
   50 next r
   60 for r=0 to 900
   70 t$=left$(a$(r),len(a1$))+right$(a$(r),len(a2$))
   80 if t$<>a1$+a2$ then goto 999
   90 next
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
