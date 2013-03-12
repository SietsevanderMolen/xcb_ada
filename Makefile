.POSIX:
GNATPREPFLAGS = -c -r
GCCFLAGS = -O2
GNATMAKE=gnatmake

RANLIB = ranlib

CC = gcc
DEPS = libxcb_ada_deps
PREFIX = /usr/lib

all: libxcb_ada

# ------------------------------------
# compilation of libxcb_ada packages
# ------------------------------------
#
# "deps.adb" is a dummy main program, with dependencies
# that should force compilation of all libxcb_ada packages;
#
libxcb_ada_deps:
	$(GNATMAKE) -c -Plibxcb_ada_build $@

# -----------------------------------
# Create a libxcb_ada library for objects
# -----------------------------------
# 
libxcb_ada: $(DEPS)
	@echo "Creating libxcb-ada.a in directory libxcb_ada"
	@if [ -d libxcb_ada ]; then rm -rf libxcb_ada; fi
	mkdir libxcb_ada
	cp -p *.ads libxcb_ada
	cp -p *.adb libxcb_ada
	(tar cpf - *.o *.ali) | (cd libxcb_ada; tar xpf -)
	rm -f libxcb_ada/$(DEPS).o libxcb_ada/$(DEPS).ali
	ar -r libxcb_ada/libxcb_ada.a libxcb_ada/*.o
	-$(RANLIB) libxcb_ada/libxcb_ada.a
	chmod 444 libxcb_ada/*.ali
	rm -f libxcb_ada/*.o

# -----------------------------------
# Maintenance targets
# -----------------------------------
#
# remove editor and compiler generated files
clean:
	rm -rf libxcb_ada
	rm -f *.o *.ali a.out *# *~ $(EXECUTABLES) b_*.c b~* *.dSYM

# remove all generated files, including configuration history
distclean:
	rm -rf libxcb_ada
	rm -f *.o *.ali a.out *# *~ $(EXECUTABLES) b_*.c b~*
# install libxcb_ada
install:
	mkdir -p $(PREFIX)/gnat
	cp -pr libxcb_ada $(PREFIX)/
	cp -p libxcb_ada.gpr $(PREFIX)/gnat
uninstall:
	rm -rf $(PREFIX)/libxcb_ada/
	rm -rf $(PREFIX)/lib/gnat/libxcb_ada.gpr

.PHONY: install clean distclean
