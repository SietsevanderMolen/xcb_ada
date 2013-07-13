LIBNAME = xcbada

.POSIX:
INSTALL = /usr/bin/install -c
PREFIX = /usr/local

all: $(LIBNAME)

# -----------------------------------
# Create a xcbada library for objects
# -----------------------------------
# 
xcbada:
	gprbuild -p xcbada.gpr

# -----------------------------------
# Maintenance targets
# -----------------------------------
#
# remove editor and compiler generated files
clean:
	gprclean xcbada.gpr

# install xcbada
install:
	gprinstall -f -p -P xcbada.gpr

uninstall:
	gprinstall --uninstall  -P xcbada.gpr

.PHONY: install uninstall clean
