# Makefile for Compiling, disassembling, cleaning, and running the C++ program

# Variables
CXX = g++
CXXFLAGS = 
TARGET = mul
SOURCE = mul.cpp
DISASM = $(TARGET)_disasm.asm
TXT = $(TARGET).txt

all: $(TARGET)

# rule for "make" command
$(TARGET): $(SOURCE)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SOURCE)

# disassemble the binary file and put it in a new file called $(TARGET).asm
dump: $(TARGET)
	objdump -d $(TARGET) > $(TXT)

# clean the generated file from compiled file and disassembled file
clean:
	rm -f $(TARGET) $(DISASM)

# Rule to run the compiled executable
run: $(TARGET)
	./$(TARGET)

.PHONY: all dump clean run