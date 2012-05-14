CC=clang
CXX=clang++
RM=rm
AR=ar
RANLIB=ranlib

DEBUG=false

all : build

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.c.d : %.c
	$(CC) $(CFLAGS) -MM $< > $@

%.o : %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o$@

%.cpp.d : %.c
	$(CXX) $(CXXFLAGS) -MM $< > $@

-include $(D)
