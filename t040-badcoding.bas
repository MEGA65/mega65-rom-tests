    1 a=usr(40)
    2 a=usr("=badcoding")
   10 gosub 1000
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
 1000 for r=0 to 1000
 1010 if r=100 then return
 1020 next r
 1030 goto 999
 1040 return
