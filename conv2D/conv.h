#include "config.h"

#ifndef CONV_H
#define CONV_H

void conv2d_regsw(int output[N - K + 1][N - K + 1]);
void conv2d_normal(int output[N - K + 1][N - K + 1]);

#endif