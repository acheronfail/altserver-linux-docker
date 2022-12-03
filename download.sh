set -exo

# sha256sum
# 14e4994d2a937c5f21aaf12367ec34758971c3a30eec773916a0dd5ad207b645  ./corecrypto.zip
unzip corecrypto.zip
cd corecrypto

git clone https://github.com/StableCoder/cmake-scripts scripts
cd scripts
git checkout e230a36
cd ..
cd ..

git clone --recursive https://github.com/microsoft/cpprestsdk
cd cpprestsdk
git checkout 9c654889
cd ..

git clone https://github.com/nih-at/libzip
cd libzip
git checkout 3286a930
cd ..

git clone --recursive https://github.com/NyaMisty/AltServer-Linux
cd AltServer-Linux
git checkout 7a9f8de
cd ..
