# Compare the speed of C, pure Python, Numpy, and Cython.

## First build the C code and Cython by running `make`
## Next run `./benchmark.sh`
## To look at the code, remove unnecessary built files using `make clean`

The C code is in `benchmark.c`<br>
The pure python code is in `naiveBenchmark.py`<br>
The numpy python code is in `numpyBenchmark.py`<br>
The cython code is in `cythonHelpers.pyx` and is imported/run from `cythonBenchmark.py`<br>
The Fortran code is in `benchmark.f90`


### Here are the results from running `./benchmark.sh` on my laptop:
```
C code: 

real    0m0.022s
user    0m0.020s
sys     0m0.002s
#####################################
Naive python: 

real    2m41.239s
user    2m40.633s
sys     0m0.086s
#####################################
Numpy python: 

real    0m0.153s
user    0m0.320s
sys     0m0.050s
#####################################
Cython python: 

real    0m0.043s
user    0m0.035s
sys     0m0.007s
#####################################
(Modern) Fortran  code: 

real    0m0.057s
user    0m0.054s
sys     0m0.002s
#####################################
```
