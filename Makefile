export IDRIS2 ?= idris2

RUNTESTS := build/exec/runtests

.PHONY: all lib clean

all: lib

lib:
	${IDRIS2} --build experimental.ipkg

clean:
	${IDRIS2} --clean experimental.ipkg
	${RM} -r build
	@
	@#${MAKE} -C tests clean

.PHONY: test test-lib

test: test-lib

test-lib: lib
	@echo "No tests yet"
	@#${MAKE} -C tests only=${only}
