#include <stdio.h>
#include <stdlib.h>
#include <complex.h>
#include <math.h>
#include <tgmath.h>


void fft_rec(complex double *x, int N)
{
    if (N == 1) return;

    complex double wn = cexp(-2 * M_PI * I / N);
    complex double w = 1;

    complex double *x_even = malloc(N/2 * sizeof(complex double));
    complex double *x_odd = malloc(N/2 * sizeof(complex double));

    for (int i = 0; i < N/2; i++)
    {
        x_even[i] = x[2*i];
        x_odd[i] = x[2*i + 1];
    }

    fft_rec(x_even, N/2);
    fft_rec(x_odd, N/2);

    for (int i = 0; i < N/2; i++)
    {
        x[i] = x_even[i] + w * x_odd[i];
        x[i + N/2] = x_even[i] - w * x_odd[i];
        w *= wn;
    }

    free(x_even);
    free(x_odd);
}


#define PI 3.14159265358979323846

// Computes the FFT of a sequence of complex numbers.
// The input array x should contain the sequence, and the output array X should
// be the result of the FFT. The length of the input and output sequences should
// be a power of 2.
void fft(complex double *x, int N) {
  // Bit-reversal permutation
  for (int i = 0; i < N; i++) {
    int j = 0;
    for (int k = 0; k < log2(N); k++) {
      j |= (i >> k) & 1;
      j <<= 1;
    }
    j >>= 1;
    if (i < j) {
      complex double temp = x[i];
      x[i] = x[j];
      x[j] = temp;
    }
  }

  // Cooley-Tukey FFT algorithm
  for (int n = 1; n < N; n <<= 1) {
    for (int i = 0; i < N; i += (n << 1)) {
      for (int j = 0; j < n; j++) {
        complex double t = cexp(-I * PI * j / n) * x[i + j + n];
        x[i + j + n] = x[i + j] - t;
        x[i + j] += t;
      }
    }
  }
}

//#define N 35000
#define N 32 * 1024 

#include <time.h>

int main(int argc, char **argv)
{
    complex double x[N];
    complex double x2[N];

		for(int i = 0; i < N; ++i)
		{
			x[i] = rand() % 4096;
			x2[i] = x[i];
			//printf("%.2lf\n", x[i]);
		}

		clock_t start, end;
    double elapsed_time;

    start = clock();
    fft(x, N);
    end = clock();

    elapsed_time = (end - start) / (double) CLOCKS_PER_SEC;

    printf("ITER: Execution time: %f seconds.\n", elapsed_time);

    start = clock();
    fft_rec(x2, N);
    end = clock();

    elapsed_time = (end - start) / (double) CLOCKS_PER_SEC;

    printf("REC: Execution time: %f seconds.\n", elapsed_time);

    //for (int i = 0; i < N; i++)
        //printf("%.2lf %.2lf\n", creal(x[i]), cimag(x[i]));

    return 0;
}
