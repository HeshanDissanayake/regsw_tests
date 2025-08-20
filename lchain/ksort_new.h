/* The MIT License

   Copyright (c) 2008, 2011 Attractive Chaos <attractor@live.co.uk>

   Permission is hereby granted, free of charge, to any person obtaining
   a copy of this software and associated documentation files (the
   "Software"), to deal in the Software without restriction, including
   without limitation the rights to use, copy, modify, merge, publish,
   distribute, sublicense, and/or sell copies of the Software, and to
   permit persons to whom the Software is furnished to do so, subject to
   the following conditions:

   The above copyright notice and this permission notice shall be
   included in all copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
   EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
   NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
   BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
   ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
   CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
   SOFTWARE.
*/

#ifndef AC_KSORT_H
#define AC_KSORT_H

#include <stdlib.h>
#include <string.h>
#include <assert.h>

#include "minimap.h"

typedef struct {
    void *left, *right;
    int depth;
} ks_isort_stack_t;

#define RS_MIN_SIZE 64
#define RS_MAX_BITS 8

typedef struct {
    uint128_t *b, *e;
} rsbucket_128x_t;

void rs_insertsort_128x(uint128_t *beg, uint128_t *end) {
    uint128_t *i;
    for (i = beg + 1; i < end; ++i) {
        if (*i < *(i - 1)) {
            uint128_t *j, tmp = *i;
            for (j = i; j > beg && tmp < *(j - 1); --j)
                *j = *(j - 1);
            *j = tmp;
        }
    }
}

void rs_sort_128x(uint128_t *beg, uint128_t *end, int n_bits, int s) {
    uint128_t *i;
    int size = 1 << n_bits, m = size - 1;
    rsbucket_128x_t *k, b[1 << RS_MAX_BITS], *be = b + size;
    assert(n_bits <= RS_MAX_BITS);
    for (k = b; k != be; ++k) k->b = k->e = beg;
    for (i = beg; i != end; ++i) ++b[*i >> s & m].e;
    for (k = b + 1; k != be; ++k)
        k->e += (k - 1)->e - beg, k->b = (k - 1)->e;
    for (k = b; k != be;) {
        if (k->b != k->e) {
            rsbucket_128x_t *l;
            if ((l = b + (*k->b >> s & m)) != k) {
                uint128_t tmp = *k->b, swap;
                do {
                    swap = tmp; tmp = *l->b; *l->b++ = swap;
                    l = b + (tmp >> s & m);
                } while (l != k);
                *k->b++ = tmp;
            } else ++k->b;
        } else ++k;
    }
    for (b->b = beg, k = b + 1; k != be; ++k) k->b = (k - 1)->e;
    if (s) {
        s = s > n_bits ? s - n_bits : 0;
        for (k = b; k != be; ++k)
            if (k->e - k->b > RS_MIN_SIZE) rs_sort_128x(k->b, k->e, n_bits, s);
            else if (k->e - k->b > 1) rs_insertsort_128x(k->b, k->e);
    }
}

void radix_sort_128x(uint128_t *beg, uint128_t *end) {
    if (end - beg <= RS_MIN_SIZE) rs_insertsort_128x(beg, end);
    else rs_sort_128x(beg, end, RS_MAX_BITS, (sizeof(uint128_t) - 1) * RS_MAX_BITS);
}

#endif
