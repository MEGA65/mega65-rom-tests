  100 trap260
  110 restore170
  120 for a=0 to 9:read t
  130 x=x+t
  140 next a
  150 if x<>45 thenlist 150:stop
  160 :
  170 data 1,2,3,4,5,6,7,8,9,foo
  180 restore170
  190 for a=0 to 10:read a$
  200 next a
  210 :
  220 do:read f$(c):c=c+1:loop until f$(c-1)="--"
  230 data the,quick,brown,fox,jumps,over,the,lazy,dog,"--"
  240 dload "runner"
  250 :
  260 if er<>22 thenprint "expected type mismatch":stop
  270 trap:goto200
