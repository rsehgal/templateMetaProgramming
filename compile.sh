mkdir build
cd build
cmake ..
make clean
make
cd ..
echo "Deleting temporary files created during compilation"
rm -rf build
