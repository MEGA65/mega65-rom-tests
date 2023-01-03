    1 rem based on fredrikr's observation in discord #basic on 03/01/23

	 30 dim z(1)
   40 a=2
   50 z(0)=5
   60 for i=a*z(0) to 20
   70 if i = 10 then goto 998:else goto 999
   80 end
  100 goto 999:end
  998 a=usr("p"):a=usr("d"):end:rem pass
  999 a=usr("f"):a=usr("d"):end:rem fail
