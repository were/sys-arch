FILES = $(wildcard *.cc)

OBJS = $(FILES:.cc=.o)

CC = g++

$(OBJS): %.o: %.cc
	$(CC) -c $< -o $@

main: $(OBJS)
	$(CC) $^ -o $@

clean:
	rm -f *o main
