#include "test.h"

int SumArray(int* arr, int len)
{
    int sum = 0;

    for (int i = 0; i < len; i++)
    {
        sum += arr[i];
    }

    return sum;
}

