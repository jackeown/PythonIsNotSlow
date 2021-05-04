# Compare the speed of C, pure Python, Numpy, Cython, and Fortran.

## First build the C code, Cython, and Fortran by running `make`
## Next run `./benchmark.sh`
## Remove built files using `make clean`

The C code is in `benchmark.c`<br>
The pure Python code is in `naiveBenchmark.py`<br>
The numpy Python code is in `numpyBenchmark.py`<br>
The Cython code is in `cythonHelpers.pyx` and is imported/run from `cythonBenchmark.py`<br>
The Fortran code is in `benchmark.f90`


### Here are the results from running `./benchmark.sh` on my laptop:
```
C code: 

real    0m0.022s
user    0m0.020s
sys     0m0.002s
#####################################
Naive Python: 

real    2m41.239s
user    2m40.633s
sys     0m0.086s
#####################################
Numpy Python: 

real    0m0.153s
user    0m0.320s
sys     0m0.050s
#####################################
Cython Python: 

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
