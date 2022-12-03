set -exo

cd corecrypto
mkdir build
cd build

CC=clang CXX=clang++ cmake ..

sed -i '/all: CMakeFiles\/corecrypto_perf/d' ./CMakeFiles/Makefile2
sed -i '/all: CMakeFiles\/corecrypto_test/d' ./CMakeFiles/Makefile2

make
make install