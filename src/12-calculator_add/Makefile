TARGET			= calculator_add
OBJECTS			= calculator_add.o

LD					= ld
LD_FLAGS		= -m elf_i386

ASM					= nasm
ASM_FLAGS		= -f elf

$(TARGET) : $(OBJECTS)
	@$(LD) $(LD_FLAGS) $^  -o $@

%.o : %.asm
	@$(ASM) $(ASM_FLAGS) $< -o $@

.PHONY : clean
clean:
	@rm -f $(OBJECTS) $(TARGET)
