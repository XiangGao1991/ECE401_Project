    .text
    .globl _start
_start:
    addi x31, x0, 0x018
    addi x30, x0, 0x010
    sw   x30, 0(x31)
    addi x1, x0, 1        # increment = 1
    addi x2, x0, 0x018    # load the memory address from 0x011, this value is 0x010
    lw x5,0(x2)
    addi x3, x0, 15       # limit = 15
    addi x4, x0, 0        # initiate at 0
    

loop:
    add  x4, x4, x1       # x5 += 1
    sw   x4, 0(x5)        # store x4 at MEM[0x10]
    bne  x4, x3, loop     # repeat until x4 == 15
    jal  x0, 0            # halt