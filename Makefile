
build:
	gcc -Os -o benchmark_c benchmark.c
	gfortran -o benchmark_f90 benchmark.f90
	python setup.py build_ext --inplace
	cython -a cythonHelpers.pyx


clean:
	-rm -f benchmark
	-rm -f benchmark_f90

	-rm -f cythonHelpers.c cythonHelpers.html
	-rm *.so
	-rm -rf build
