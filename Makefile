CC      = g++
CFLAGS  = -g -Wall -O3
TARGETDIR = bin
SRCDIR = src

all: boot

boot: os.o VirtualMachine.o Assembler.o
	$(CC) $(CFLAGS) -o $(TARGETDIR)/boot $(SRCDIR)/boot.cpp $(TARGETDIR)/os.o $(TARGETDIR)/VirtualMachine.o $(TARGETDIR)/Assembler.o

os.o:
	$(CC) $(CFLAGS) -o $(TARGETDIR)/os.o -c $(SRCDIR)/os/os.cpp

VirtualMachine.o:
	$(CC) $(CFLAGS) -o $(TARGETDIR)/VirtualMachine.o -c $(SRCDIR)/kernel/VirtualMachine.cpp

Assembler.o:
	$(CC) $(CFLAGS) -o $(TARGETDIR)/Assembler.o -c $(SRCDIR)/assembler/Assembler.cpp

clean:
	rm -f $(TARGETDIR)/*
