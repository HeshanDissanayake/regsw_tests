#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void generate_config_h(int N, int K) {
    FILE *fp = fopen("config.h", "w");
    if (!fp) {
        perror("Failed to open config.h");
        exit(1);
    }

    fprintf(fp, "#ifndef CONFIG_H\n");
    fprintf(fp, "#define CONFIG_H\n\n");
    fprintf(fp, "#define N %d\n", N);   // <-- fixed
    fprintf(fp, "#define K %d\n\n", K); // <-- fixed
    fprintf(fp, "#endif\n");

    fclose(fp);
}

void generate_data_c(int N, int K) {
    FILE *fp = fopen("data.c", "w");
    if (!fp) {
        perror("Failed to open data.c");
        exit(1);
    }

    fprintf(fp, "#include \"config.h\"\n\n");

    // Image
    fprintf(fp, "int input[N][N] = {\n");
    for (int i = 0; i < N; i++) {
        fprintf(fp, "    {");
        for (int j = 0; j < N; j++) {
            fprintf(fp, "%d", rand() % 9 + 1);  // values 1–9
            if (j < N - 1) fprintf(fp, ", ");
        }
        fprintf(fp, "}%s\n", i < N - 1 ? "," : "");
    }
    fprintf(fp, "};\n\n");

    // Kernel
    fprintf(fp, "int kernel[K][K] = {\n");
    for (int i = 0; i < K; i++) {
        fprintf(fp, "    {");
        for (int j = 0; j < K; j++) {
            int val = (rand() % 3) - 1;  // values -1, 0, 1
            fprintf(fp, "%d", val);
            if (j < K - 1) fprintf(fp, ", ");
        }
        fprintf(fp, "}%s\n", i < K - 1 ? "," : "");
    }
    fprintf(fp, "};\n");

    fclose(fp);
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Usage: %s <N> <K>\n", argv[0]);
        return 1;
    }

    int N = atoi(argv[1]);
    int K = atoi(argv[2]);

    if (K > N || N <= 0 || K <= 0) {
        printf("Invalid sizes: ensure 0 < K <= N\n");
        return 1;
    }

    srand(time(NULL));
    generate_config_h(N, K);
    generate_data_c(N, K);

    printf("Generated 'config.h' and 'data.c' with N=%d, K=%d\n", N, K);
    return 0;
}
