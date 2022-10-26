# Compare the speed of C, pure Python, Numpy, Cython, and Fortran.

## First build the C code, Cython, and Fortran by running `make`
## Next run `./benchmark.sh`
## Remove built files using `make clean`

The C code is in `benchmark.c`<br>
The pure Python code is in `naiveBenchmark.py`<br>
The numpy Python code is in `numpyBenchmark.py`<br>
The Cython code is in `cythonHelpers.pyx` and is imported/run from `cythonBenchmark.py`<br>
The Fortran code is in `benchmark.f90`


### Here are the results from running `./benchmark.sh` on my [workstation](https://linux-hardware.org/?probe=28ce3a6f8d):
```
C code:

real    0m0.024s
user    0m0.019s
sys     0m0.005s
#####################################
Naive python:

real    2m16.430s
user    2m15.398s
sys     0m0.676s
#####################################
Numpy python:

real    0m0.793s
user    0m0.213s
sys     0m0.080s
#####################################
Cython python:

real    0m0.036s
user    0m0.028s
sys     0m0.004s
#####################################
(Modern) Fortran code (gfortran):

real    0m0.066s
user    0m0.043s
sys     0m0.006s
#####################################
(Modern) Fortran code (Intel):

real    0m0.114s
user    0m0.110s
sys     0m0.002s
#####################################
```
