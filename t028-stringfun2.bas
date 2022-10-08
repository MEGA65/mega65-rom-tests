   10 t$="abc"
   20 if left$(t$,2)<>"ab" then list20:stop
   30 if left$(t$,3)<>"abc" then list30:stop
   40 if left$(t$,4)<>"abc" then list40:stop
   50 if right$(t$,2)<>"bc" then list50:stop
   60 if right$(t$,3)<>"abc" then list60:stop
   70 if right$(t$,4)<>"abc" then list70:stop
  900 dload "runner"
