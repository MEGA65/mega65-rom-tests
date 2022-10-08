    1 a=usr(15)
    2 a=usr("=ifthenelse")
   10 a=1:b=5:t=0
   20 if a>0 then begin
   30   if b<0 then begin
   40     a=usr("/reason: unreachable"):goto 999 : rem should never be reached
   50   bend: else begin
   60     t=1
   70   bend
   80 bend
   90 if t<>1 then a=usr("/reason: else clause not executed"):goto 999
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
