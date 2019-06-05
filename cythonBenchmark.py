import sys
import random
from cythonHelpers import squareMatrixBenchmark


if __name__ == "__main__":
    if(len(sys.argv) != 2):
        print("usage: python cythonBenchmark.py n")
        exit()
    
    n = int(sys.argv[1])
    random.seed(0) # won't actually work in this case...
    squareMatrixBenchmark(n)