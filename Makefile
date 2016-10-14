all: foo.js jquery.flot.js jquery.js

foo.js: foo.ts
	tsc --outFile $@ $<

jquery.flot.js: flot/jquery.flot.js
	cp -f $< $@

jquery.js: flot/jquery.js
	cp -f $< $@
