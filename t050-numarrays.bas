    1 a=usr(50)
    2 a=usr("=numarrays")
  100 dim a1(32,32):dim b1%(32,32)
  110 for j=0 to 32
  120 for k=0 to 32
  130 a1(j,k)=j*k
  140 b1%(j,k)=j*k+k
  150 next k
  160 next j
  170 for j=0 to 32
  180 for k=0 to 32
  190 if b1%(j,k)-a1(j,k)<>k then goto 999
  200 next k
  210 next j
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
