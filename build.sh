emcc -O3 specfunc/*.o err/*.o sys/*.o --bind specfunc.cpp -I./ --memory-init-file 0 -o specfunc.js
