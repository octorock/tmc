	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08129634:: @ 08129634
	.incbin "baserom.gba", 0x129634, 0x0000014

gUnk_08129648:: @ 08129648
	.4byte gUnk_08129634
	.4byte 00000000
