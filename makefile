# This file demonstrates how to compile the Whirlpool project on Linux.
#
# To compile do:
#
# make Whirlpool
#

GPP = g++
GCC = gcc
OUTFILE = "Whirlpool.so"

COMPILE_FLAGS = -fpermissive -fPIC -c -O3 -w -D LINUX -I samp-whirlpool/SDK/amx/

all: Whirlpool

clean:
	-rm *~ *.o *.so

Whirlpool:
	$(GCC) $(COMPILE_FLAGS) samp-whirlpool/SDK/amx/*.c
	$(GPP) $(COMPILE_FLAGS) samp-whirlpool/SDK/*.cpp
	$(GPP) $(COMPILE_FLAGS) samp-whirlpool/*.cpp
	$(GPP) -O2 -fshort-wchar -shared -o $(OUTFILE) *.o
