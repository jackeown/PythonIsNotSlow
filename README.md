# Compare the speed of C, pure Python, Numpy, and Cython.

## First build the C code and Cython by running `make`
## Next run `./benchmark.sh`
## To look at the code, remove unnecessary built files using `make clean`

The C code is in `benchmark.c`<br>
The pure python code is in `naiveBenchmark.py`<br>
The numpy python code is in `numpyBenchmark.py`<br>
The cython code is in `cythonHelpers.pyx` and is imported/run from `cythonBenchmark.py`
