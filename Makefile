all:
	gcc ExtLib.cpp -o ExtLib.o -shared -fPIC
	gcc ExtLib.o -o libExtLib.so -shared

clean:
	rm ExtLib.o libExtLib.so
