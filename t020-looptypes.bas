    1 a=usr(20)
    2 a=usr("=looptypes")
   10 trap 100
   20 for r&=0 to 10:next r
   30 a=usr("/reason: unreachable"):goto 999
  100 trap
  110 if er<>22 then a=usr("/reason: type mismatch expected!"):goto 999
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
