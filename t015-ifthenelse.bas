   10 a=1:b=5:t=0
   20 if a>0 then begin
   30   if b<0 then begin
   40     stop:list 40 : rem should never be reached
   50   bend: else begin
   60     t=1
   70   bend
   80 bend
   90 if t<>1 then stop:list90
  900 dload "runner"
