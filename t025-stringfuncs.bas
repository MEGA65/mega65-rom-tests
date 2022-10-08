    1 a=usr(25)
    2 a=usr("=stringfuncs")
   10 a$="abcdefghijklmnopqrstuvwxyz!"
   20 t$(0)=left$(a$,3):t$(1)=mid$(a$,1,3):t$(2)=right$(a$,3)
   30 if t$(0)<>t$(1) then a=usr("/reason: t$(0)<>t$(1)"):goto 999
   32 if t$(2)<>"yz!" then a=usr("/reason: t$(2)<>'yz!'"):goto 999
   35 for r=0 to 10
   40 t$(r)=mid$(a$,1+r*3,3)
   50 nextr
   60 if t$(0)<>"abc" then a=usr("/reason: abc"):goto 999
   70 if t$(1)<>"def" then a=usr("/reason: def"):goto 999
   80 if t$(2)<>"ghi" then a=usr("/reason: ghi"):goto 999
   90 if t$(3)<>"jkl" then a=usr("/reason: jkl"):goto 999
  100 if t$(4)<>"mno" then a=usr("/reason: mno"):goto 999
  110 if t$(5)<>"pqr" then a=usr("/reason: pqr"):goto 999
  120 if t$(6)<>"stu" then a=usr("/reason: stu"):goto 999
  130 if t$(7)<>"vwx" then a=usr("/reason: vwx"):goto 999
  140 if t$(8)<>"yz!" then a=usr("/reason: yz!"):goto 999
  150 if t$(9)<>"" then a=usr("/reason: t$(9)<>''"):goto 999
  160 if t$(10)<>"" then a=usr("/reason: t$(10)<>''"):goto 999
  170 :
  180 :
  190 :
  195 rem test invalid string offset
  200 a$="this is some string"
  210 a$="foo"
  220 b$=mid$(a$,5,8)
  230 if b$<>"" then a=usr("/reason: b$<>''"):goto 999
  240 :
  250 :
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
