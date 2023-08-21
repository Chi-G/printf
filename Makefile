CC = gcc
CFLAGS = -Wall -Wextra -Werror -pedantic -std=gnu89
OBJECTS = _printf.o functions.o main.o craft_handlers.o functions_one.o functions_two.o loc_concision.o loc_size.o loc_width.o use_print.o utils.o
SOURCES = _printf.c functions.c main.c craft_handlers.c functions_one.c functions_two.c loc_concision.c loc_size.c loc_width.c use_print.c utils.c

EXECUTABLE = my_program

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $(EXECUTABLE)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(EXECUTABLE)
