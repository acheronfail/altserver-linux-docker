set -exo

cd libzip
mkdir build
cd build

cmake -DBUILD_SHARED_LIBS=0 ..

make
make install
