work=900

echo "C code: "
time ./benchmark_c $work
echo "#####################################"


echo "Naive python: "
time python naiveBenchmark.py $work
echo "#####################################"


echo "Numpy python: "
time python numpyBenchmark.py $work
echo "#####################################"


echo "Cython python: "
time python cythonBenchmark.py $work
echo "#####################################"

echo "(Modern) Fortran code (gfortran): "
time ./benchmark_f90_gfort $work
echo "#####################################"

echo "(Modern) Fortran code (Intel): "
time ./benchmark_f90_ifort $work
echo "#####################################"
