#ifndef __COMPLEX_H__
#define __COMPLEX_H__

#include <stdint.h>

typedef struct{
    double real;
    double imag;
} complex;

complex* complex_add(complex* result, complex a, complex b);
complex* complex_sub(complex* result, complex a, complex b);
complex* complex_mul(complex* result, complex a, complex b);
complex* complex_div(complex* result, complex a, complex b);

#endif  // !__COMPLEX_H__
