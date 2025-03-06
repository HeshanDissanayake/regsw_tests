asm volatile (
        // Load A matrix into registers
        "lw x12, 0(%0)\n"
        "lw x13, 4(%0)\n"
        "lw x14, 8(%0)\n"
        "lw x15, 12(%0)\n"

        // Load B matrix into registers
        "lw x16, 0(%1)\n"
        "lw x17, 4(%1)\n"
        "lw x18, 8(%1)\n"
        "lw x19, 12(%1)\n"

        // Compute C[0][0] = A[0][0] * B[0][0] + A[0][1] * B[1][0]
        "mul x20, x12, x16\n"  // A[0][0] * B[0][0]
        "mul x21, x13, x18\n"  // A[0][1] * B[1][0]
        "add x20, x20, x21\n"  // C[0][0]

        // Compute C[0][1] = A[0][0] * B[0][1] + A[0][1] * B[1][1]
        "mul x21, x12, x17\n"  // A[0][0] * B[0][1]
        "mul x22, x13, x19\n"  // A[0][1] * B[1][1]
        "add x21, x21, x22\n"  // C[0][1]

        // Compute C[1][0] = A[1][0] * B[0][0] + A[1][1] * B[1][0]
        "mul x22, x14, x16\n"  // A[1][0] * B[0][0]
        "mul x23, x15, x18\n"  // A[1][1] * B[1][0]
        "add x22, x22, x23\n"  // C[1][0]

        // Compute C[1][1] = A[1][0] * B[0][1] + A[1][1] * B[1][1]
        "mul x23, x14, x17\n"  // A[1][0] * B[0][1]
        "mul x24, x15, x19\n"  // A[1][1] * B[1][1]
        "add x23, x23, x24\n"  // C[1][1]

        // Store C matrix back to memory
        "sw x20, 0(%2)\n"
        "sw x21, 4(%2)\n"
        "sw x22, 8(%2)\n"
        "sw x23, 12(%2)\n"

        : // No output operands
        : "r"(A), "r"(B), "r"(C) // Input operands: A, B, C matrix pointers
        : "x12", "x13", "x14", "x15", "x16", "x17", "x18", "x19",
          "x20", "x21", "x22", "x23", "x24" // Clobbered registers
    );