FILES = foo.js jquery.flot.js jquery.js

all: $(FILES)

foo.js: foo.ts
	tsc --outFile $@ $<

jquery.flot.js: flot/jquery.flot.js
	cp -f $< $@

jquery.js: flot/jquery.js
	cp -f $< $@

clean:
	rm -f $(FILES)

upload: all
	rsync -v -a --progress foo.html $(FILES) flot "$${__HOMEPAGE_REMOTE_PATH}/flot-typescript--fc-solve-dbm-solver/"
