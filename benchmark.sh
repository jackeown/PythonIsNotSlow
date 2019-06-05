work=500

echo "C code: "
time ./benchmark $work
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

