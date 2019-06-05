#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void squareMatrixBenchmark(int n){
    float* m1 = malloc(sizeof(float)*n*n);
    float* m2 = malloc(sizeof(float)*n*n);
    float* m3 = malloc(sizeof(float)*n*n);

    for(int i=0; i<n; i++){
        for(int j=0; j<n; j++){
            m1[i*n + j] = (float)rand()/RAND_MAX;
            m2[i*n + j] = (float)rand()/RAND_MAX;
        }
    }


    for(int i=0; i<n; i++){
        for(int j=0; j<n; j++){
            float sum = 0;
            for(int k=0; k<n; k++){
                sum += m1[i*n + k]*m2[k*n + j];                
            }
            m3[i*n+j] = sum;
        }
    }

    free(m1);
    free(m2);
    free(m3);
}


int main(int argc, char* argv[]){
    if(argc != 2){
        printf("usage: ./benchmark n\n");
        exit(1);
    }

    int n = atoi(argv[1]);
    srand(0);
    squareMatrixBenchmark(n);
}