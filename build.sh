#!/bin/sh

export DIR="$(pwd)"
export GSL=$DIR/gsl-js

cd $GSL

emconfigure ./configure
emmake make

cd $DIR

emcc -O3 $GSL/cdf/*.o $GSL/err/*.o $GSL/randist/*.o $GSL/specfunc/*.o $GSL/gsl/*.h --bind specfunc.cpp -I./ --memory-init-file 0 -o specfunc.js

echo "JS build finished"
