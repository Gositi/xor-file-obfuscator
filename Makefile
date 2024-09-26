CCU = gcc
CCW = x86_64-w64-mingw32-gcc
OBJECTS = main.c
LIBS =
CFLAGS = -Wall -Wextra --static -O3
NAME = obfuscator

unix: $(OBJECTS)
	$(CCU) $(CFLAGS) -o $(NAME) $(OBJECTS) $(LIBS)

windows: $(OBJECTS)
	$(CCW) $(CFLAGS) -o $(NAME) $(OBJECTS) $(LIBS)
