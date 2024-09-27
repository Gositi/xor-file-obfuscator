CCU = gcc
CCW = x86_64-w64-mingw32-gcc
OBJECTS = main.c
LIBS =
CFLAGS = -Wall -Wextra --static -O3
NAME = xfobf
INSTALL_PATH = /usr/local

unix: $(OBJECTS)
	$(CCU) $(CFLAGS) -o $(NAME) $(OBJECTS) $(LIBS)

all: $(OBJECTS) unix windows

windows: $(OBJECTS)
	$(CCW) $(CFLAGS) -o $(NAME) $(OBJECTS) $(LIBS)

install: $(NAME)
	cp $(NAME) $(INSTALL_PATH)/bin/

uninstall:	
	rm -f $(INSTALL_PATH)/bin/$(NAME)

clean:
	rm -f $(NAME) $(NAME).exe
