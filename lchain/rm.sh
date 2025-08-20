basename=$(echo "$1" | cut -d '.' -f 1 )

rm assembly/${basename}*
rm exec/${basename}*
rm llvm/${basename}*


# regsw x1, x0, x0
# 	li x5, 0x55

# 	regsw x1, x0, x0
# 	mv x10, sp

# 	regsw x0, x1, x1
# 	sd x5, 8(x10)

# 	ld a3, 8(sp)
# 	regsw x1, x1, x1
# 	ld x11, 8(x10)