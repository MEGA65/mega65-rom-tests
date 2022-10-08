    1 a=usr(35)
    2 a=usr("=fileinput")
  100 ts$="a,b,c,d,e,f,g"
  110 open 1,8,15,"s:temp":close 1
  120 open 1,8,5,"temp,s,w"
  130 print#1,ts$:print#1,"abcdefg"
  140 close 1
  160 :
  170 open 1,8,5,"temp,s,r"
  180 input#1,t$(0),t$(1),t$(2),t$(3),t$(4),t$(5),t$(6)
  190 if st<>0 thenclose1:a=usr("/reason: st<>0"):goto 999
  195 for r=0 to 5
  200 if t$(r)<>chr$(65+r) thenclose 1:a=usr("/reason: t$(r)<>chr$(65+r)"):goto 999
  205 next
  210 close 1
  220 :
  230 open 1,8,5,"temp,s,r"
  240 line input#1,t$:close 1
  250 if t$<>ts$ then close1:a=usr("/reason: t$<>ts$"):goto 999
  260 :
  265 scratch"temp"
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
