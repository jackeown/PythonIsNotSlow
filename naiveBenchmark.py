import sys
import random

def squareMatrixBenchmark(n):
    m1 = [None] * (n**2)
    m2 = [None] * (n**2)
    m3 = [None] * (n**2)

    for i in range(n):
        for j in range(n):
            m1[i*n + j] = random.random()
            m2[i*n + j] = random.random()
    
    for i in range(n):
        for j in range(n):
            s = 0
            for k in range(n):
                s += m1[i*n + k]*m2[k*n + j]
            m3[i*n+j] = s
        
    


if __name__ == "__main__":
    if(len(sys.argv) != 2):
        print("usage: python naiveBenchmark.py n")
        exit()
    
    n = int(sys.argv[1])
    random.seed(0)
    squareMatrixBenchmark(n)