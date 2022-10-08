  100 rem **********************************************
  105 rem **                                          **
  110 rem ** basic65 test suite                       **
  115 rem ** written mar 2021 by ubik                 **
  120 rem ** with special greetings to bit shifter :) **
  125 rem **                                          **
  130 rem ** to extend, simply save a test routine    **
  135 rem ** with the filename 't@@@-testname' onto   **
  140 rem ** the test disc (where @@@ is a three-     **
  145 rem ** digit, decimal number) and make sure     **
  150 rem ** that your test routine ends with loading **
  155 rem ** the runnner again, e.g. 'dload "runner"' **
  160 rem **                                          **
  165 rem ** happy testing!!!                         **
  170 rem **                                          **
  175 rem **********************************************
  180 :
  200 clr                : rem in case we've been chain loaded
  202 dim f$(999)        : rem filename list
  205 ba=dec("ff00")     : rem bank 5 mailbox memory base addr
  210 bank 128:poke 0,65 : rem make things go fast
  220 gosub 1500         : rem init test suite if necessary
  230 gosub 1000         : rem gather filenames
  235 if nt=0 then print "no tests found. aborting.":end
  238 do
  240   ct=peek(ba+2)+256*peek(ba+3) : rem get current test
  250   if in<>1 then ct=ct+1
  260   if ct=999 then pokeba,0:print "--- tests completed. ---";:end
  270   poke ba+2,mod(ct,256):poke ba+3,ct/256
  280   if f$(ct)<>"" then print "++ running ";f$(ct)" ";:run(f$(ct))
  400 loop
  999 stop
 1000 rem --- read dir ---
 1020 open 1,8,0,"$":get#1,a$,a$:e$=chr$(0)
 1040 do
 1060   get#1,a$,a$,h$,l$:if st thenclose 1: exit
 1080   cb=asc(h$+e$)+256*asc(l$+e$)
 1100   rem print cb;
 1120   ce$=""
 1140   do
 1160     get#1,a$
 1180     if a$<>chr$(0) thence$=ce$+a$
 1200   loop until a$=chr$(0)
 1220   if cb<>0 and instr(ce$,"blocks free")=0 thenbegin
 1240     q1=instr(ce$,chr$(34))
 1260     q2=instr(ce$,chr$(34),q1+1)
 1280     rem print ce$,h1,h2
 1300     f$=mid$(ce$,q1+1,q2-q1-1):rem print f$
 1320     if left$(f$,1)="t" and mid$(f$,5,1)="-" thenbegin
 1340       tn$=mid$(f$,2,3)
 1345       tn=val(tn$)
 1350       if f$(tn)<>"" then print"?duplicate test index "+tf$:dclose:end
 1380       f$(tn)=f$:nt=nt+1
 1440     bend
 1460   bend
 1480 loop
 1483 if in=1 and nt>0 then begin
 1484   print "{down}found tests: "
 1485   forr=0to255:iff$(r)<>"" then print f$(r)
 1486   nextr
 1487   print
 1488 bend
 1490 return
 1500 rem --- init test suite ---
 1510 bank 5
 1520 if chr$(peek(ba))<>"s" or chr$(peek(ba+1))<>"k" then begin
 1530   print "initializing test suite..."
 1540   poke ba,asc("s"):poke ba+1,asc("k") : rem tests inited key
 1550   poke ba+2,0:poke ba+3,0             : rem current test
 1555   in=1
 1700 bend
 1780 return
