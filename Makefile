# ADB makefile
# ------------

SRCS+= test.c 
 
CPPFLAGS+= -I.
CPPFLAGS+= -O2 -g -Wall -Wno-unused-parameter

LIBS= 
 
OBJS= $(SRCS:.c=.o)
 
all: test 
 
adb: $(OBJS)
	$(CC) -o $@ $(LDFLAGS) $(OBJS) $(LIBS)
 
clean:
	rm -rf $(OBJS)
