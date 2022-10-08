   10 a=usr(10)
   20 a=usr("=stdbool")
   30 clr
   40 a=0:b=0:if a and b then a=usr("/reason: a and b"):goto 999
   50 a=-1:b=0:if (a or b)<>-1 then a=usr("/reason: (a or b)<>-1"):goto 999
   60 if not a <>0 then a=usr("/reason: not a<>0"):goto 999
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
