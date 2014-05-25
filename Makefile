HC = ghc
OBJS = Main.o show.o
CFLAGS  = -I$(shell $(HC) --print-libdir)/include

all: Main

Main: $(OBJS)
	$(HC) $(OBJS) -o $@

%.o: %.hs
	$(HC) -c $<

clean:
	rm -f Main *.hi *.o *_stub.h