#include "fft.h"

#define FFT_DBG
#define FFT_DBG_LVL FFT_DBG_LOGE
#include "fft_dbg.h"

int main()
{
    #define DATA_SIZE       (8)
    complex data[DATA_SIZE];
    complex Y[DATA_SIZE];

    for (int i = 0; i < DATA_SIZE; i++) {
        data[i].real = i;
        data[i].imag = i;
    }
    fft_printf("original signal: \r\n"); fft_printData(data, DATA_SIZE);
    fft(data, DATA_SIZE, Y, DATA_SIZE);
    fft_printf("fft signal: \r\n"); fft_printData(Y, DATA_SIZE);

    return 0;
}
