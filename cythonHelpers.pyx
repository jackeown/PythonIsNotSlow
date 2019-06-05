cimport cython
from libc.stdlib cimport malloc, free
from libc.stdlib cimport rand, RAND_MAX

@cython.boundscheck(False)
@cython.wraparound(False)
@cython.nonecheck(False)
@cython.cdivision(True)
cpdef void squareMatrixBenchmark(int n):
    cdef float* m1 = <float*> malloc(sizeof(float) * n*n)
    cdef float* m2 = <float*> malloc(sizeof(float) * n*n)
    cdef float* m3 = <float*> malloc(sizeof(float) * n*n)

    cdef int i
    cdef int j
    cdef int k
    cdef float s

    for i in range(n):
        for j in range(n):
            m1[i*n + j] = <float> rand()/RAND_MAX
            m2[i*n + j] = <float> rand()/RAND_MAX
    
    for i in range(n):
        for j in range(n):
            s = 0
            for k in range(n):
                s += m1[i*n + k]*m2[k*n + j]
            m3[i*n+j] = s
    
    free(m1)
    free(m2)
    free(m3)



