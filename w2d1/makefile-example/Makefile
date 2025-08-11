FILES = $(wildcard *.c)

OBJS = $(FILES:.c=.o)

CC = gcc

$(OBJS): %.o: %.c
	$(CC) -c $< -o $@

main: $(OBJS)
	$(CC) $^ -o $@

clean:
	rm -f *o main
