cmake-ninja:
	cmake -S . -B build  -G Ninja \
		-DCMAKE_BUILD_TYPE=Release \
		-DCMAKE_EXPORT_COMPILE_COMMANDS=ON

cmake-make:
	cmake -S . -B build  -G "Unix Makefiles" \
		-DCMAKE_BUILD_TYPE=Release \
		-DCMAKE_EXPORT_COMPILE_COMMANDS=ON

clean-cmake:
	rm -rf build
