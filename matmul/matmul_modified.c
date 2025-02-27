#include <stdio.h>
#include <stdlib.h>
#include <time.h>

uint load_count = 0;
uint load_count_result_cache = 0;
uint store_count = 0;
uint store_count_result_cache = 0;

// Function to print a matrix
void printMatrix(int** matrix, int SIZE) {
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            printf("%2d ", matrix[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}

// Function to copy a block of matrix A into reg_block
void fetchBlock_row(int* dest, int** src, int row, int col, int BLOCK_SIZE) {
   for (int i = 0; i < BLOCK_SIZE; i++) {
        dest[i] = src[row][col + i];  // Correct indexing
    }
}

void saveBlock_row(int* src, int** dest, int row, int col, int BLOCK_SIZE) {
   for (int i = 0; i < BLOCK_SIZE; i++) {
        dest[row][col + i] = src[i];  // Correct indexing
    }
}

// Function to generate a random matrix
void generateRandomMatrix(int** matrix, int SIZE) {
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            matrix[i][j] = rand() % 10;  // Random values from 0 to 9
        }
    }
}

// Function to generate a zero matrix
void generateZero(int** matrix, int SIZE) {
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            matrix[i][j] = 0;  // Zero out the matrix
        }
    }
}

// Function to multiply two matrices with memory operation tracking
void multiplyMatrices(int** A, int** B, int** result, int SIZE, int BLOCK_SIZE) {
    int NUM_SIZE = SIZE / BLOCK_SIZE;  // Number of blocks

    for(int Cj=0; Cj<NUM_SIZE; Cj++){

        for (int i = 0; i < SIZE; i++) {
            // load_count += BLOCK_SIZE;
            int C_reg_block[BLOCK_SIZE];

            for(int cc=0; cc<BLOCK_SIZE; cc++){
                C_reg_block[cc] = 0;
            }

            for (int b = 0; b < NUM_SIZE; b++) {
            
                // Creating a temporary block array to store data from A
                // Copy the block from A into reg_block
                load_count += BLOCK_SIZE;
                int A_reg_block[BLOCK_SIZE];
                fetchBlock_row(A_reg_block, A, i, b*BLOCK_SIZE, BLOCK_SIZE);

                for (int j = Cj*BLOCK_SIZE; j < (Cj+1)*BLOCK_SIZE; j++) {  

                    
                    for (int k = 0; k < BLOCK_SIZE; k++) {
                        load_count ++;  // Loading a value from B
                        C_reg_block[j - Cj*BLOCK_SIZE] += A_reg_block[k]* B[b * BLOCK_SIZE + k][j];
                        // result[i][j] += A_reg_block[k] * B[b * BLOCK_SIZE + k][j];
                    }
                }
            }
            saveBlock_row(C_reg_block, result, i, Cj*BLOCK_SIZE, BLOCK_SIZE);
            printMatrix(result, SIZE); // Commented out for brevity
            store_count += BLOCK_SIZE;
        }

    }
}


void appendToCSV(const char *filename, int SIZE, int BLOCK_SIZE, uint c, uint d) {
    FILE *file = fopen(filename, "a"); // Open file in append mode
    if (file == NULL) {
        perror("Error opening file");
        return;
    }

    fprintf(file, "%d, %d, %d, %d\n", SIZE, BLOCK_SIZE, c, d);
    fclose(file);
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Usage: %s <SIZE> <BLOCK_SIZE>\n", argv[0]);
        return 1;
    }

    // Parse SIZE and BLOCK_SIZE from command-line arguments
    int SIZE = atoi(argv[1]);
    int BLOCK_SIZE = atoi(argv[2]);

    if (SIZE <= 0 || BLOCK_SIZE <= 0 || SIZE % BLOCK_SIZE != 0) {
        printf("Invalid SIZE or BLOCK_SIZE. SIZE must be divisible by BLOCK_SIZE.\n");
        return 1;
    }

    int **A, **B, **result;

    // Dynamically allocate memory for the matrices
    A = (int**)malloc(SIZE * sizeof(int*));
    B = (int**)malloc(SIZE * sizeof(int*));
    result = (int**)malloc(SIZE * sizeof(int*));
    for (int i = 0; i < SIZE; i++) {
        A[i] = (int*)malloc(SIZE * sizeof(int));
        B[i] = (int*)malloc(SIZE * sizeof(int));
        result[i] = (int*)malloc(SIZE * sizeof(int));
    }

    // Initialize random seed
    unsigned int seed = 3;
    srand(seed);

    generateRandomMatrix(A, SIZE);
    generateRandomMatrix(B, SIZE);
    
    
    srand(time(NULL));
    generateRandomMatrix(result, SIZE);

    // generateZero(result, SIZE);

    printf("\nSeed used: %u\n", seed);

    // printf("\nMatrix A:\n");
    // printMatrix(A, SIZE); // Commented out for brevity

    // printf("\nMatrix B:\n");
    // printMatrix(B, SIZE); // Commented out for brevity


    // printf("\nMatrix result:\n");


    multiplyMatrices(A, B, result, SIZE, BLOCK_SIZE);

    // Calculate the sum of the result matrix
    int result_sum = 0;
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            result_sum += result[i][j];
        }
    }

    printf("\nSum of Resultant Matrix: %d\n", result_sum);

    // Print memory operation counts
    printf("\nTotal Loads: %d\n", load_count);
    printf("Total Stores: %d\n", store_count);

    
    
    const char *filename = "result_chaching.csv";
    appendToCSV(filename, SIZE, BLOCK_SIZE, load_count, store_count);


    // Free dynamically allocated memory
    for (int i = 0; i < SIZE; i++) {
        free(A[i]);
        free(B[i]);
        free(result[i]);
    }
    free(A);
    free(B);
    free(result);

    return 0;
}
