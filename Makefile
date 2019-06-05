
build:
	gcc -o benchmark benchmark.c
	python setup.py build_ext --inplace
	cython -a cythonHelpers.pyx


clean:
	-rm benchmark

	-rm cythonHelpers.c cythonHelpers.html
	-rm *.so
	-rm -rf build
