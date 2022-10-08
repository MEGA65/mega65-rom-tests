.PHONY: bas2prg prg2bas

clean:
	rm -rf prgs

prg2bas:
	for filename in prgs/*.prg; do \
	  echo $$filename ; \
		BASNAME=$${filename/.prg/.bas} ; \
		BASNAME=$${BASNAME/prgs\//} ; \
		petcat -65 -o $$BASNAME -- $$filename ; \
	done

BASLIST := $(wildcard *.bas)
PRGLIST := $(patsubst %.bas,prgs/%.prg,$(BASLIST))

bas2prg: $(BASLIST)
	echo $(BASLIST)
	rm -rf prgs
	mkdir prgs
	for filename in *.bas; do \
	  echo $$filename ; \
		PRGNAME=prgs/$${filename/.bas/.prg} ; \
		petcat -w65 -o $$PRGNAME $$filename ; \
	done

prgs:
	mkdir prgs

prgs/%.prg: %.bas prgs
	petcat -w65 -o $@ -- $<

b65tests.d81: $(PRGLIST)
	rm -f b65tests.d81
	c1541 -format "basic65tests,sk" D81 "b65tests.d81" 8
	c1541 -attach b65tests.d81 -write "prgs/autoboot.c65.prg" autoboot.c65
	c1541 -attach b65tests.d81 -write "prgs/runner.prg" runner
	c1541 -attach b65tests.d81 -write "b65support.bin"
	for filename in prgs/t*.prg; do \
	  c1541 -attach b65tests.d81 -write $$filename ; \
	done

COM=tcp

runtest: b65tests.d81
	xmega65.native -uartmon :4510 &> /dev/null & echo $$! > pid
	sleep 2
	m65 -l $(COM) -@ b65support.bin@15fe
	m65 -l $(COM) -T 'sys $$1600'
	for filename in prgs/t*.prg; do \
		echo $$filename ; \
		m65 -l $(COM) -r --unittest=100 --utlog=b65tests.log $$filename ; \
	done
	# m65 -l $(COM) -F --unittest=100 --utlog=b65tests.log -d b65tests.d81
	m65 -l $(COM) -T 'rem *** tests completed ***'
	kill `cat pid`

