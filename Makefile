export IDRIS2 ?= idris2

RUNTESTS := build/exec/runtests

.PHONY: all lib install clean clean-install repl

clean-install: clean install

all: lib

lib:
	${IDRIS2} --build experimental.ipkg

install:
	${IDRIS2} --install experimental.ipkg

clean:
	${IDRIS2} --clean experimental.ipkg
	${RM} -r build
	@
	@#${MAKE} -C tests clean

repl:
	rlwrap ${IDRIS2} --find-ipkg src/Experimental/Prelude.idr

.PHONY: test test-lib

test: test-lib

test-lib: lib
	@echo "No tests yet"
	@#${MAKE} -C tests only=${only}
