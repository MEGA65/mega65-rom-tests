  100 dim a1(32,32):dim b1%(32,32)
  110 for j=0 to 32
  120 for k=0 to 32
  130 a1(j,k)=j*k
  140 b1%(j,k)=j*k+k
  150 next k
  160 next j
  170 for j=0 to 32
  180 for k=0 to 32
  190 if b1%(j,k)-a1(j,k)<>k thenlist 100:stop
  200 next k
  210 next j
  900 dload "runner"
