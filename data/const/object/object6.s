	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811F14C:: @ 0811F14C
	.4byte sub_0808292C
	.4byte sub_080829E4

gUnk_0811F154:: @ 0811F154
	.4byte sub_0808292C
	.4byte sub_08082AB8

gUnk_0811F15C:: @ 0811F15C
	.4byte sub_08082B9C
	.4byte sub_08082C38
	.4byte sub_08082E14
	.4byte sub_08082E6C

gUnk_0811F16C:: @ 0811F16C
	.incbin "baserom.gba", 0x11F16C, 0x000000C

gUnk_0811F178:: @ 0811F178
	.incbin "baserom.gba", 0x11F178, 0x0000014

gUnk_0811F18C:: @ 0811F18C
	.incbin "baserom.gba", 0x11F18C, 0x0000004
