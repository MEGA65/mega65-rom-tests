    1 a=usr(44)
    2 a=usr("=powerofx")
  100 rem power of x test
  110 for x=0 to 16
  120   p1=2^x
  130   p2=1
  140   for m=0 to x
  150     if m thenp2=p2*2
  160   next m
  170   if p1<>p2 thenbegin
  180     print using"2^##";x;" has an error of ";
  182     e=abs(p1-p2)/p2:print e;
  190     if abs(p2-p1)>.1 then begin
  200       print"...which is too much":goto 999
  210     bend : elsebegin : print "...which is negligible.":bend
  220   bend
  230 next x
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
