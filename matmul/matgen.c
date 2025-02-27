#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

void write_matrix(FILE *file, const char *name, int size, int is_random, int matrix[size][size]) {
    fprintf(file, "int %s[%d][%d] = {\n", name, size, size);

    for (int i = 0; i < size; i++) {
        fprintf(file, "    {");
        for (int j = 0; j < size; j++) {
            matrix[i][j] = is_random ? rand() % 100 : (i * size + j + 1); // Store values
            fprintf(file, "%d", matrix[i][j]);
            if (j < size - 1) fprintf(file, ", ");
        }
        fprintf(file, "}%s\n", (i < size - 1) ? "," : "");
    }
    fprintf(file, "};\n\n");
}

void write_transpose_matrix(FILE *file, const char *transposed_name, int size, int matrix[size][size]) {
    fprintf(file, "int %s[%d][%d] = {\n", transposed_name, size, size);

    for (int i = 0; i < size; i++) {
        fprintf(file, "    {");
        for (int j = 0; j < size; j++) {
            fprintf(file, "%d", matrix[j][i]); // Correctly transpose values
            if (j < size - 1) fprintf(file, ", ");
        }
        fprintf(file, "}%s\n", (i < size - 1) ? "," : "");
    }
    fprintf(file, "};\n\n");
}

int main(int argc, char *argv[]) {
    if (argc < 4) {
        printf("Usage: %s <matrix_name1> <matrix_name2> ... <size> <random/consecutive>\n", argv[0]);
        return 1;
    }

    int size = atoi(argv[argc - 2]); // Matrix size
    if (size < 1) {
        printf("Error: Size must be a positive number.\n");
        return 1;
    }

    int is_random = (strcmp(argv[argc - 1], "random") == 0) ? 1 : 0;

    FILE *file = fopen("matrices.h", "w");
    if (!file) {
        printf("Error: Unable to create matrices.h\n");
        return 1;
    }

    fprintf(file, "#ifndef MATRICES_H\n#define MATRICES_H\n\n");

    srand(time(NULL)); // Seed random numbers

    int has_B = 0;
    int B[size][size]; // Temporary storage for B

    // Generate matrices
    for (int i = 1; i < argc - 2; i++) {
        if (strcmp(argv[i], "B") == 0) {
            has_B = 1;
            write_matrix(file, argv[i], size, is_random, B); // Store B values
        } else {
            int temp[size][size]; // Dummy array to prevent unnecessary storage
            write_matrix(file, argv[i], size, is_random, temp);
        }
    }

    // Generate BT if B exists
    if (has_B) {
        write_transpose_matrix(file, "BT", size, B);
    }

    fprintf(file, "#endif // MATRICES_H\n");
    fclose(file);

    printf("Matrices written to matrices.h\n");
    return 0;
}
