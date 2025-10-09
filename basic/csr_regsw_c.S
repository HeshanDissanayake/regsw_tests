# Copyright 2022 Thales DIS design services SAS
#
# Licensed under the Solderpad Hardware Licence, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.0
# You may obtain a copy of the License at https://solderpad.org/licenses/
#
# Original Author: Guillaume Chauvon (guillaume.chauvon@thalesgroup.fr)

#*****************************************************************************
# custom_test_template.S
#-----------------------------------------------------------------------------
#

.globl main

#regsw_c	x0, 0x114(x18)		# 100 100 000 000 100 010 100
  

main:
	regsw_c	x0, 0x0(x18)		# 100100000000000000000
    li x3, 0
    li x4, 5
    li x30, 20
    csrr x30, 0x80e
    csrr x31, 0x802
    jal exit;

