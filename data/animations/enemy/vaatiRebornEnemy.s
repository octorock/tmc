	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_080D04D7:: @ 080D04D7
	.incbin "baserom.gba", 0x0D04D7, 0x0000011

gUnk_080D04E8:: @ 080D04E8
	.incbin "baserom.gba", 0x0D04E8, 0x0000011

gUnk_080D04F9:: @ 080D04F9
	.incbin "baserom.gba", 0x0D04F9, 0x0000005

gUnk_080D04FE:: @ 080D04FE
	.incbin "baserom.gba", 0x0D04FE, 0x0000003

gUnk_080D0501:: @ 080D0501
	.incbin "baserom.gba", 0x0D0501, 0x0000001

gUnk_080D0502:: @ 080D0502
	.incbin "baserom.gba", 0x0D0502, 0x0000006

gUnk_080D0508:: @ 080D0508
	.incbin "baserom.gba", 0x0D0508, 0x0000005

gUnk_080D050D:: @ 080D050D
	.incbin "baserom.gba", 0x0D050D, 0x0000024

gUnk_080D0531:: @ 080D0531
	.incbin "baserom.gba", 0x0D0531, 0x0000027

gUnk_080D0558:: @ 080D0558
	.4byte gUnk_080D04D7
	.4byte gUnk_080D04E8
	.4byte gUnk_080D0501
	.4byte gUnk_080D050D
	.4byte gUnk_080D0531
	.4byte 00000000

gUnk_080D0570:: @ 080D0570
	.incbin "baserom.gba", 0x0D0570, 0x0000005

gUnk_080D0575:: @ 080D0575
	.incbin "baserom.gba", 0x0D0575, 0x0000010

gUnk_080D0585:: @ 080D0585
	.incbin "baserom.gba", 0x0D0585, 0x0000007

gUnk_080D058C:: @ 080D058C
	.4byte gUnk_080D0570
	.4byte gUnk_080D0575
	.4byte gUnk_080D0585
	.4byte 00000000

gUnk_080D059C:: @ 080D059C
	.incbin "baserom.gba", 0x0D059C, 0x0000011

gUnk_080D05AD:: @ 080D05AD
	.incbin "baserom.gba", 0x0D05AD, 0x0000011

gUnk_080D05BE:: @ 080D05BE
	.incbin "baserom.gba", 0x0D05BE, 0x0000011

gUnk_080D05CF:: @ 080D05CF
	.incbin "baserom.gba", 0x0D05CF, 0x0000011

gUnk_080D05E0:: @ 080D05E0
	.4byte gUnk_080D059C
	.4byte gUnk_080D05BE
	.4byte gUnk_080D05AD
	.4byte gUnk_080D05CF
	.4byte 00000000

gUnk_080D05F4:: @ 080D05F4
	.incbin "baserom.gba", 0x0D05F4, 0x0000006

gUnk_080D05FA:: @ 080D05FA
	.incbin "baserom.gba", 0x0D05FA, 0x0000002

gUnk_080D05FC:: @ 080D05FC
	.incbin "baserom.gba", 0x0D05FC, 0x0000001

gUnk_080D05FD:: @ 080D05FD
	.incbin "baserom.gba", 0x0D05FD, 0x0000001

gUnk_080D05FE:: @ 080D05FE
	.incbin "baserom.gba", 0x0D05FE, 0x0000007

gUnk_080D0605:: @ 080D0605
	.incbin "baserom.gba", 0x0D0605, 0x0000003

gUnk_080D0608:: @ 080D0608
	.incbin "baserom.gba", 0x0D0608, 0x0000001

gUnk_080D0609:: @ 080D0609
	.incbin "baserom.gba", 0x0D0609, 0x0000015

gUnk_080D061E:: @ 080D061E
	.incbin "baserom.gba", 0x0D061E, 0x0000016

gUnk_080D0634:: @ 080D0634
	.4byte gUnk_080D05F4
	.4byte gUnk_080D0609
	.4byte gUnk_080D05F4
	.4byte gUnk_080D061E
	.4byte 00000000
