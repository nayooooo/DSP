#include "fft.h"
#include <stdlib.h>

// 2点FFT
static fft_err_t fft_2p(complex* x, complex* y)
{
    complex_add(&y[0], x[0], x[1]);
    complex_sub(&y[1], x[0], x[1]);
}

// 基2FFT算法
fft_err_t fft(complex* x, uint32_t x_N, complex* y, uint32_t N)
{
    if (x_N == 0) return FFT_ERROR_INPUT_SIGNAL;
    if (N == 0) return FFT_ERROR_POINTS;

    memset(y, 0, N * sizeof(complex));
    if (N >= x_N) {
        memcpy(y, x, x_N * sizeof(complex));
    } else {
        memcpy(y, x, N * sizeof(complex));
    }

    return FFT_OK;
}
