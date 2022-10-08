    1 a=usr(90)
    2 a=usr("=datas")
  100 trap260
  110 restore170
  120 for a=0 to 9:read t
  130 x=x+t
  140 next a
  150 if x<>45 then a=usr("/reason: x<>45"):goto 999
  160 :
  170 data 1,2,3,4,5,6,7,8,9,foo
  180 restore170
  190 for a=0 to 10:read a$
  200 next a
  210 :
  220 do:read f$(c):c=c+1:loop until f$(c-1)="--"
  230 data the,quick,brown,fox,jumps,over,the,lazy,dog,"--"
  240 goto 998
  250 :
  260 if er<>22 then a=usr("/reason: expected type mismatch"):goto 999
  270 trap:goto200
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
