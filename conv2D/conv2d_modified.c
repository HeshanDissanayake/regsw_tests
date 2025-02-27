#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int load_count = 0;
int store_count = 0;

// Function to track loads
int load(int *array, int i, int j, int cols) {
    return array[i * cols + j];
}

// Function to track stores
void store(int *array, int i, int j, int cols, int value) {
    store_count++;
    array[i * cols + j] = value;
}

// Function to perform 2D convolution
void convolve(int *matrix, int rows, int cols, int *kernel, int krows, int kcols, int *output) {
    int kr_half = krows / 2;
    int kc_half = kcols / 2;
    
    for (int i = 0; i < rows; i++) {
        load_count+= krows * kcols;
        for (int j = 0; j < cols; j++) {
            int sum = 0;
            load_count+= krows;
            for (int ki = 0; ki < krows; ki++) {
                for (int kj = 0; kj < kcols; kj++) {
                    int mi = i + ki - kr_half;
                    int mj = j + kj - kc_half;
                    
                    if (mi >= 0 && mi < rows && mj >= 0 && mj < cols) {

                        sum += matrix[mi*cols + mj] * kernel[ki*kcols + kj];
                    }
                }
            }
            store(output, i, j, cols, sum);
        }
    }
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Usage: %s <mat size> <k size>\n", argv[0]);
        return 1;
    }
    
    srand(3);
    
    int rows = atoi(argv[1]);
    int cols = atoi(argv[1]);
    int krows = atoi(argv[2]);
    int kcols = atoi(argv[2]);
    
    int matrix_size = rows * cols;
    int kernel_size = krows * kcols;
    
    int *matrix = (int *)malloc(matrix_size * sizeof(int));
    int *kernel = (int *)malloc(kernel_size * sizeof(int));
    int *output = (int *)malloc(matrix_size * sizeof(int));
    
    // Initialize matrix with random values
    for (int i = 0; i < matrix_size; i++) {
        matrix[i] = rand() % 10;
    }
    
    // Initialize kernel with random values
    for (int i = 0; i < kernel_size; i++) {
        kernel[i] = rand() % 5;
    }
    
    convolve(matrix, rows, cols, kernel, krows, kcols, output);
    
    // Compute the sum of the output matrix
    int sum = 0;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            sum += output[i * cols + j];
        }
    }
    
    printf("Sum of Output Matrix: %d\n", sum);
    printf("Memory Loads: %d\n", load_count);
    printf("Memory Stores: %d\n", store_count);
    
    free(matrix);
    free(kernel);
    free(output);
    
    return 0;
}