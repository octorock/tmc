	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080FEEA8:: @ 080FEEA8
	.4byte sub_08054A60
	.4byte sub_08054AC8

gUnk_080FEEB0:: @ 080FEEB0
	.incbin "baserom.gba", 0x0FEEB0, 0x0000008
