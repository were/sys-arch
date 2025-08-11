CXX = g++

FLAGS = -O3 -fPIC

INCLUDE = -I./include

LIB_SRC = $(wildcard lib/*.cc)

LIB_OBJ = $(patsubst lib/%.cc,build/%.o,$(LIB_SRC))

DRIVER_SRC = $(wildcard driver/*.cc)

static_lib: build/libfoo.a

shared_lib: build/libfoo.so

$(LIB_OBJ): build/%.o: lib/%.cc
	@echo "Compiling $<..."
	@mkdir -p build
	$(CXX) $(INCLUDE) $(FLAGS) -c $< -o $@

build/libfoo.a: $(LIB_OBJ)
	@echo "Building library..."
	@mkdir -p build
	ar rcs $@ $^

build/libfoo.so: $(LIB_OBJ)
	@echo "Building shared library..."
	@mkdir -p build
	$(CXX) -shared -o $@ $(LIB_OBJ)

main_plain: $(DRIVER_SRC) $(LIB_SRC)
	@echo "Compiling main program..."
	$(CXX) $(FLAGS) $(INCLUDE) -o $@ $^

main_shared: build/libfoo.so $(DRIVER_SRC)
	@echo "Compiling main program with shared library..."
	# -L build: Find lib from this folder
	# -lfoo: Find libfoo.so
	$(CXX) $(FLAGS) $(INCLUDE) -o $@ $^ -Lbuild -lfoo

main_static: build/libfoo.a $(DRIVER_SRC)
	@echo "Compiling main program with static library..."
	$(CXX) $(FLAGS) $(INCLUDE) -o $@ $^

clean:
	rm -rf build main_*
