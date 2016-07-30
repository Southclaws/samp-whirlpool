# This file demonstrates how to compile the Whirlpool project on Linux.
#
# To compile do:
#
# make Whirlpool
#

GPP = g++
GCC = gcc
OUTFILE = "Whirlpool.so"

COMPILE_FLAGS = -c -O3 -w -D LINUX -I ./SDK/amx/

clean:
	-rm *~ *.o *.so

Whirlpool: clean
	$(GCC) $(COMPILE_FLAGS) ./SDK/amx/*.c
	$(GPP) $(COMPILE_FLAGS) ./SDK/*.cpp
	$(GPP) $(COMPILE_FLAGS) ./Source/*.cpp
	$(GPP) $(COMPILE_FLAGS) *.cpp
	$(GPP) -O2 -fshort-wchar -shared -o $(OUTFILE) *.o
