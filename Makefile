
build:
	gcc -Os -o benchmark_c benchmark.c
	gfortran -o benchmark_f90_gfort benchmark.f90
	ifort -o benchmark_f90_ifort benchmark.f90
	python setup.py build_ext --inplace
	cython -a cythonHelpers.pyx


clean:
	-rm -f benchmark_c
	-rm -f benchmark_f90_gfort
	-rm -f benchmark_f90_ifort

	-rm -f cythonHelpers.c cythonHelpers.html
	-rm *.so
	-rm -rf build
