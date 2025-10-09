#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/wait.h>
#include <errno.h>
#include <string.h>
#include "regsw_perf.h"

int main(int argc, char **argv) {

    clear_regsw_cache();
    uint64_t start = get_cycles();

    if (argc < 2) {
        fprintf(stderr, "Usage: %s <program> [args...]\n", argv[0]);
        return 1;
    }

    pid_t pid = fork();
    if (pid < 0) {
        perror("fork failed");
        return 1;
    }

    if (pid == 0) {
        // Child: replace process image with target program
        execvp(argv[1], &argv[1]);
        // If execvp returns, it failed
        fprintf(stderr, "execvp(%s) failed: %s\n", argv[1], strerror(errno));
        _exit(127);
    }

    // Parent: wait for child to complete
    int status;
    if (waitpid(pid, &status, 0) < 0) {
        perror("waitpid failed");
        return 1;
    }

    // Print exit status
    if (WIFEXITED(status)) {
         //regsw perf end
        uint64_t end = get_cycles();
        uint64_t time = end - start;

        int regsw_hits = get_regsw_hits();
        int regsw_misses = get_regsw_misses();   
                
        printf("cycles: %lu | regsw hits:%d regsw misses:%d \n", end - start, regsw_hits, regsw_misses);
        printf("Corrected Cycles: %lu\n", end - start - regsw_hits);

        uint64_t lw = get_lw();
        uint64_t li = get_li();
        uint64_t ld = get_ld();

        uint64_t sw = get_sw();
        uint64_t sd = get_sd();
        printf(" lw, %lu\n ld, %lu\n li, %lu\n sw, %lu\n sd, %lu\n ", lw, ld, li, sw, sd);

        printf("Child exited with status %d\n", WEXITSTATUS(status));
    } else if (WIFSIGNALED(status)) {
        printf("Child killed by signal %d\n", WTERMSIG(status));
    } else {
        printf("Child exited abnormally\n");
    }

    return 0;
}
