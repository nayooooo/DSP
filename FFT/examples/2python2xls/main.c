#include "fft.h"

#define FFT_DBG
#define FFT_DBG_LVL FFT_DBG_LOGE
#include "fft_dbg.h"

#include <Python.h>

int main()
{
    #define DATA_SIZE       (32)
    complex data[DATA_SIZE];
    complex Y[DATA_SIZE];
    complex x[DATA_SIZE];

    for (int i = 0; i < DATA_SIZE; i++) {
        data[i].real = i;
        data[i].imag = i;
    }
    // fft_printf("original signal: \r\n"); fft_printData(data, DATA_SIZE);
    fft(data, DATA_SIZE / 2, Y, DATA_SIZE);
    // fft_printf("fft signal: \r\n"); fft_printData(Y, DATA_SIZE);
    ifft(Y, DATA_SIZE, x, DATA_SIZE);
    // fft_printf("ifft signal: \r\n"); fft_printData(x, DATA_SIZE);

    Py_Initialize();
    PyRun_SimpleString("print('Hello CPython!')");
    PyObject* pandas_module = PyImport_ImportModule("pandas");
    Py_Finalize();

    // Py_Initialize();
    // PyObject* pyDict = PyDict_New();
    // PyObject* pyData = PyList_New(DATA_SIZE);
    // PyObject* pyX = PyList_New(DATA_SIZE);
    // PyObject* pyY = PyList_New(DATA_SIZE);
    // PyObject* real;
    // PyObject* imag;
    // PyObject* complexNum;
    // for (uint32_t i = 0; i < DATA_SIZE; i++) {
    //     real = PyFloat_FromDouble(data[i].real);
    //     imag = PyFloat_FromDouble(data[i].imag);
    //     complexNum = PyComplex_FromDoubles(PyFloat_AsDouble(real), PyFloat_AsDouble(imag));
    //     PyList_SetItem(pyData, i, complexNum);
    //     real = PyFloat_FromDouble(x[i].real);
    //     imag = PyFloat_FromDouble(x[i].imag);
    //     complexNum = PyComplex_FromDoubles(PyFloat_AsDouble(real), PyFloat_AsDouble(imag));
    //     PyList_SetItem(pyX, i, complexNum);
    //     real = PyFloat_FromDouble(Y[i].real);
    //     imag = PyFloat_FromDouble(Y[i].imag);
    //     complexNum = PyComplex_FromDoubles(PyFloat_AsDouble(real), PyFloat_AsDouble(imag));
    //     PyList_SetItem(pyY, i, complexNum);
    // }
    // PyDict_SetItemString(pyDict, "raw data", pyData);
    // PyDict_SetItemString(pyDict, "FFT", pyY);
    // PyDict_SetItemString(pyDict, "IFFT", pyX);
    // Py_DECREF(pyData);
    // Py_DECREF(pyY);
    // Py_DECREF(pyX);
    // PyRun_SimpleString("import sys\n"
    //                     "sys.path.append(\"./../\")\n");
    // PyObject* pyModule = PyImport_ImportModule("data2xls");
    // if (pyModule) {
    //     PyObject* pyFunc = PyObject_GetAttrString(pyModule, "data2xls");
    //     if (pyFunc && PyCallable_Check(pyFunc)) {
    //         PyObject* pySavePath = PyUnicode_FromString("./xls");
    //         PyObject* pyXlsName = PyUnicode_FromString("data");
    //         PyObject* pyArgs = PyTuple_Pack(3, pyDict, pySavePath, pyXlsName);
    //         PyObject_CallObject(pyFunc, pyArgs);
    //         Py_DECREF(pySavePath);
    //         Py_DECREF(pyXlsName);
    //         Py_DECREF(pyArgs);
    //     } else {
    //         printf("not found func!\r\n");
    //     }
    //     Py_XDECREF(pyFunc);
    // } else {
    //     printf("not found module!\r\n");
    // }
    // Py_XDECREF(pyModule);
    // Py_DECREF(pyDict);
    // Py_Finalize();

    return 0;
}
