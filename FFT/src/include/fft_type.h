#ifndef __FFT_TYPE_H__
#define __FFT_TYPE_H__

#include <stdint.h>
#include "./complex.h"

typedef enum{
    FFT_OK = 0,                     // 无错误
    FFT_ERROR_INPUT_SIGNAL,         // 输入信号错误
    FFT_ERROR_OUTPUT_SIGNAL,        // 输出信号错误
    FFT_ERROR_POINTS,               // 变换点数错误
} fft_err_t;

#endif  // !__FFT_TYPE_H__