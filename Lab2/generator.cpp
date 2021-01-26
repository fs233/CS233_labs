// a code generator for the ALU chain in the 32-bit ALU
// look at example_generator.cpp for inspiration

// make generator
// ./generator
#include <cstdio>
using std::printf;

int
main() {
    int width = 32;
    for (int i = 1 ; i < width ; i ++) {
        printf("    alu1 a%d(out[%d], carryout[%d], A[%d], B[%d], carryout[%d], control);\n", i+1, i, i, i, i, i-1);
        printf("    or o%d(chain[%d], chain[%d], out[%d]);\n", i+1, i, i-1, i);
    }
}