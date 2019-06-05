import sys
import numpy as np

def squareMatrixBenchmark(n):
    m1 = np.random.random([n,n])
    m2 = np.random.random([n,n])
    m3 = m1 @ m2


if __name__ == "__main__":
    if(len(sys.argv) != 2):
        print("usage: python numpyBenchmark.py n")
        exit()
    
    n = int(sys.argv[1])
    np.random.seed(0)
    squareMatrixBenchmark(n)
