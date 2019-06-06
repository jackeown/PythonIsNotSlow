# Compare the speed of C, pure Python, Numpy, and Cython.

## First build the C code and Cython by running `make`
## Next run `./benchmark.sh`
## To look at the code, remove unnecessary built files using `make clean`

The C code is in `benchmark.c`<br>
The pure python code is in `naiveBenchmark.py`<br>
The numpy python code is in `numpyBenchmark.py`<br>
The cython code is in `cythonHelpers.pyx` and is imported/run from `cythonBenchmark.py`


### Here are the results from running `./benchmark.sh` on my laptop:
`
C code: 

real	0m2.376s
user	0m2.371s
sys	0m0.004s
#####################################
Naive python: 

real	1m56.993s
user	1m56.926s
sys	0m0.051s
#####################################
Numpy python: 

real	0m0.204s
user	0m0.577s
sys	0m0.490s
#####################################
Cython python: 

real	0m0.062s
user	0m0.055s
sys	0m0.010s
#####################################
`
