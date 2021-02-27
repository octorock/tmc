	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_089FB770:: @ 089FB770
	.byte 00, 0x0d, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00

gUnk_089FB780:: @ 089FB780 @ asm/code_0806FA6C.s
	.incbin "baserom.gba", 0x9FB780, 0x0000F44
