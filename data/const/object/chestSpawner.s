	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811F7E8:: @ 0811F7E8
	.4byte sub_08083DF0
	.4byte sub_08083DF0
	.4byte sub_08083E08
	.4byte sub_08083E08
	.4byte sub_08083E08
	.4byte sub_08083E08
	.4byte sub_08083DF0
	.4byte sub_08083DF0

gUnk_0811F808:: @ 0811F808
	.4byte sub_08084190
	.4byte sub_0808420C
	.4byte sub_08084224
	.4byte sub_0808427C

gUnk_0811F818:: @ 0811F818
	.4byte sub_08083E4C
	.4byte sub_08083EB0
	.4byte sub_08083F14
	.4byte sub_08083FEC
	.4byte sub_08084024
	.4byte sub_08084184
	.4byte sub_0808414C
	.4byte nullsub_114

gUnk_0811F838:: @ 0811F838
	.incbin "baserom.gba", 0x11F838, 0x0000008

gUnk_0811F840:: @ 0811F840
	.incbin "baserom.gba", 0x11F840, 0x0000010

gUnk_0811F850:: @ 0811F850
	.incbin "baserom.gba", 0x11F850, 0x0000004

gUnk_0811F854:: @ 0811F854
	.incbin "baserom.gba", 0x11F854, 0x0000012

gUnk_0811F866:: @ 0811F866
	.incbin "baserom.gba", 0x11F866, 0x000001A

gUnk_0811F880:: @ 0811F880
	.incbin "baserom.gba", 0x11F880, 0x000000A

gUnk_0811F88A:: @ 0811F88A
	.incbin "baserom.gba", 0x11F88A, 0x000000E

gUnk_0811F898:: @ 0811F898
	.4byte gUnk_0811F854
	.4byte gUnk_0811F866
	.4byte gUnk_0811F880
	.4byte gUnk_0811F88A

gUnk_0811F8A8:: @ 0811F8A8
	.incbin "baserom.gba", 0x11F8A8, 0x0000008

gUnk_0811F8B0:: @ 0811F8B0
	.incbin "baserom.gba", 0x11F8B0, 0x0000008
