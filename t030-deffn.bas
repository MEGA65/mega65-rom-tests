    1 a=usr(30)
    2 a=usr("=deffn")
   20 deffnd(x)=x*5
   25 d=5:x=8
   30 if fnd(d)<>25 then a=user("/reason: <>25"):goto 999
   40 if fnd(x)<>40 then a=user("/reason: <>40"):goto 999
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
