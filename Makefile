prg2bas:
	for filename in prgs/*.prg; do \
	  echo $$filename ; \
		BASNAME=$${filename/.prg/.bas} ; \
		BASNAME=$${BASNAME/prgs\//} ; \
		petcat -65 -o $$BASNAME -- $$filename ; \
	done

bas2prg:
	rm -rf prgs
	mkdir prgs
	for filename in *.bas; do \
	  echo $$filename ; \
		PRGNAME=prgs/$${filename/.bas/.prg} ; \
		petcat -w65 -o $$PRGNAME $$filename ; \
	done
