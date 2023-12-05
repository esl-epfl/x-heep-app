#include "ap_int.h"
#include "hls_stream.h"

const int N = 35000; // Number of input time series samples
const int K = 16;    // Number of convolutional filters
const int F = 128;   // Filter size (must be odd)
const int S = 2;   // Stride size
const int P = 0;   // Padding size
const int D = 2;   // Dilation size

// 1D convolutional layer
void conv1d(
    hls::stream< ap_int<16> > &input,
    hls::stream< ap_int<16> > &output,
    const int weights[K][F],
    const int biases[K]
) {
    #pragma HLS ARRAY_PARTITION variable=weights complete dim=1
    #pragma HLS ARRAY_PARTITION variable=biases complete

    // Perform convolution with stride S and dilation D
    for (int i = 0; i < N; i += S) {
        for (int k = 0; k < K; k++) {
            int sum = 0;
            for (int j = 0; j < F; j++) {
                int d = (j - P) * D;
                if (i + d >= 0 && i + d < N) {
                    sum += weights[k][j] * input.read();
                } else {
                    input.read(); // Skip padded values
                }
            }
            output.write(sum + biases[k]);
        }
    }
}

// Average pooling layer
void avg_pool1d(
    hls::stream< ap_int<16> > &input,
    hls::stream< ap_int<16> > &output,
    const int size,
    const int stride
) {
    // Add check to ensure size and stride are positive integers
    if (size <= 0 || stride <= 0) {
        return;
    }

    int sum = 0;
    int count = 0;

    // Perform pooling with stride S
    for (int i = 0; i < N; i += stride) {
        sum += input.read();
        count++;
        if (count == size) {
            output.write(sum / size);
            sum = 0;
            count = 0;
        }
    }
}

// Linear layer
void linear(
    hls::stream< ap_int<16> > &input,
    hls::stream< ap_int<16> > &output,
    const int weights[K][K],
    const int biases[K]
) {
    #pragma HLS ARRAY_PARTITION variable=weights complete dim=1
    #pragma HLS ARRAY_PARTITION variable=biases complete

    // Perform linear combination of input values and weights
    for (int i = 0; i < K; i++) {
        int sum = 0;
        for (int j = 0; j < K; j++) {
            sum += weights[i][j] * input.read();
        }
        output.write(sum + biases[i]);
    }
}

// Network inference
void inference(
    hls::stream< ap_int<16> > &input,
    hls::stream< ap_int<16> > &output,
    const int conv_weights[K][F],
    const int conv_biases[K],
    const int pool_size,
    const int pool_stride,
    const int linear_weights[K][K],
    const int linear_biases[K]
) {
    // Create intermediate streams for convolution and pooling
    hls::stream< ap_int<16> > conv_output;
    hls::stream< ap_int<16> > pool_output;

    // Perform convolution and pooling
    conv1d(input, conv_output, conv_weights, conv_biases);
    avg_pool1d(conv_output, pool_output, pool_size, pool_stride);

    // Perform linear transformation and output result
    linear(pool_output, output, linear_weights, linear_biases);
}