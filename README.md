[![NPM version](https://badge.fury.io/js/gsl-sf.svg)](http://badge.fury.io/js/gsl-sf)

gsl-sf-js
===============

special functions of GNU Scientific Library for JS

## Installation

Via npm:
```
npm install gsl-sf
```

To use it inside node:
```
var sf = require("gsl-sf");
```

## API

For a full documentation of the original C functions, visit [https://www.gnu.org/software/gsl/manual/html_node/Special-Functions.html#Special-Functions](https://www.gnu.org/software/gsl/manual/html_node/Special-Functions.html#Special-Functions). The prefix `gsl_sf_` was removed from the original function definitions. For example, while in C you would call `gsl_sf_gamma (x)` to evaluate the Gamma function at value *x* , the function is exported simply as `gamma(x)`. 

Example:
```
gamma(3); 
```

Output:
```
2
```

Alternatively, we can use the *result* object or the *result_e10* class to store the return value of the function:

```
var res = new sf.result()
sf.gamma(3, res)
```

The *result* object has two keys: *val* contains the value and *err* contains an estimate of the absolute error.

Code:
```
console.log("The value is " + res.val + ", the error is " + res.err)
```

Output:
```
The value is 2, the error is 4.440892098500626e-16
```
