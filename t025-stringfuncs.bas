   10 a$="abcdefghijklmnopqrstuvwxyz!"
   20 t$(0)=left$(a$,3):t$(1)=mid$(a$,1,3):t$(2)=right$(a$,3)
   30 if t$(0)<>t$(1) then list30:stop
   32 if t$(2)<>"yz!" then list32:stop
   35 for r=0 to 10
   40 t$(r)=mid$(a$,1+r*3,3)
   50 nextr
   60 if t$(0)<>"abc" then list60:stop
   70 if t$(1)<>"def" then list70:stop
   80 if t$(2)<>"ghi" then list80:stop
   90 if t$(3)<>"jkl" then list90:stop
  100 if t$(4)<>"mno" then list100:stop
  110 if t$(5)<>"pqr" then list110:stop
  120 if t$(6)<>"stu" then list120:stop
  130 if t$(7)<>"vwx" then list130:stop
  140 if t$(8)<>"yz!" then list140:stop
  150 if t$(9)<>"" then list150:stop
  160 if t$(10)<>"" then list160:stop
  170 :
  180 :
  190 :
  195 rem test invalid string offset
  200 a$="this is some string"
  210 a$="foo"
  220 b$=mid$(a$,5,8)
  230 if b$<>"" then list230:stop
  240 :
  250 :
  999 dload "runner"
