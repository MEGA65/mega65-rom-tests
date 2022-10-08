    1 a=usr(28)
    2 a=usr("=stringfun2")
   10 t$="abc"
   20 if left$(t$,2)<>"ab" then a=usr("/reason: left$(t$,2)<>'ab'"):goto 999
   30 if left$(t$,3)<>"abc" then a=usr("/reason: left$(t$,3)<>'abc'"):goto 999
   40 if left$(t$,4)<>"abc" then a=usr("/reason: left$(t$,4)<>'abc'"):goto 999
   50 if right$(t$,2)<>"bc" then a=usr("/reason: right$(t$,2)<>'bc'"):goto 999
   60 if right$(t$,3)<>"abc" then a=usr("/reason: right$(t$,3)<>'abc'"):goto 999
   70 if right$(t$,4)<>"abc" then a=usr("/reason: right$(t$,4)<>'abc'"):goto 999
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
