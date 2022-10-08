   90 dim s$(200)
  100 ts$="abcdefghijklmnopqrstuvwxyz"
  110 open 1,8,15,"s:temp":close 1
  120 open 1,8,5,"temp,s,w"
  130 forr=0to200:print#1,ts$:nextr
  140 close 1
  150 :
  160 open 1,8,15,"temp,s,r"
  170 do
  180   get#1,a$
  190   n=n+1:if n>255 then si=si+1:n=0
  200   s$(si)=a$+s$(si)
  210 loop until st
  220 close 1
  230 open 1,8,15,"s:temp":close 1
  900 dload "runner"
