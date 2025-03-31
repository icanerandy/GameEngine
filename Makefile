gend:
	mkdir -p build
	cd build && cmake .. -DCMAKE_BUILD_TYPE=Debug && cd ..

genrd:
	mkdir -p build
	cd build && cmake .. -DCMAKE_BUILD_TYPE=RelWithDebInfo && cd ..

genr:
	mkdir -p build
	cd build && cmake .. -DCMAKE_BUILD_TYPE=Release && cd ..

md:
	cmake --build ./build --config Debug -- /p:CL_MP=true /p:CL_MPCount=20

mrd:
	cmake --build ./build --config RelWithDebInfo -- /p:CL_MP=true /p:CL_MPCount=20

mr:
	cmake --build ./build --config Release -- /p:CL_MP=true /p:CL_MPCount=20

rd:
	./bin/win64/Debug/test.exe

rrd:
	./bin/win64/RelWithDebInfo/test.exe

rr:
	./bin/win64/Release/test.exe

clean:
	rm build -rf
	rm bin -rf
