CC = gcc
CFLAGS = -Wall -Wextra -Werror -pedantic -std=gnu89
SOURCES = _printf.c functions.c main.c craft_handlers.c functions_one.c functions_two.c loc_concision.c loc_size.c loc_width.c use_print.c utils.c loc_flags.c
OBJECTS = $(SOURCES:.c=.o)
EXECUTABLE = my_program

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $(EXECUTABLE)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(EXECUTABLE)
