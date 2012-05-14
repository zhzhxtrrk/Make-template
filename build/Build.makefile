OBJ=${SRC:%.c=%.o}
D=${SRC:%.c=%.c.d}

build : $(DEP) $(TARGET)

ifeq ($(TYPE),static) # static library
$(TARGET) : $(D) $(OBJ)
	$(AR) r $@ $(OBJ)
	$(RANLIB) $@
else
ifeq ($(TYPE),shared) # shared library
$(TARGET) : $(D) $(OBJ)
	$(CC) $(OBJ) $(CFLAGS) $(LDFLAGS) -shared -o $@
else # executable
$(TARGET) : $(D) $(OBJ)
	$(CC) $(OBJ) $(CFLAGS) $(LDFLAGS) -o $@
endif
endif

clean :
	-$(RM) $(D) $(OBJ) $(TARGET)
