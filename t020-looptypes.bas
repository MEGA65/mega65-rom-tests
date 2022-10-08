   10 trap 100
   20 for r&=0 to 10:next r
   30 list20:stop
  100 trap
  110 if er<>22 then print "type mismatch expected!":list20:stop
  120 dload "runner"
