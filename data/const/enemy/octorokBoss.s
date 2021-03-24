	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CF040:: @ 080CF040
	.4byte sub_080356F8
	.4byte sub_080356F8
	.4byte sub_08001324
	.4byte sub_080351D8
	.4byte sub_08001242

gUnk_080CF054:: @ 080CF054
	.4byte sub_08035288
	.4byte sub_080352FC
	.4byte sub_080354F8
	.4byte sub_0803552C
	.4byte sub_08035578
	.4byte sub_08035598
	.4byte sub_080355B4

gUnk_080CF070:: @ 080CF070
	.incbin "baserom.gba", 0x0CF070, 0x0000008

gUnk_080CF078:: @ 080CF078
	.4byte sub_0803571C
	.4byte sub_08035B94
	.4byte sub_0803520C
	.4byte sub_080359B4
	.4byte sub_0803670C

gUnk_080CF08C:: @ 080CF08C
	.incbin "baserom.gba", 0x0CF08C, 0x0000020

gUnk_080CF0AC:: @ 080CF0AC
	.4byte sub_080359F8
	.4byte sub_08035A24
	.4byte sub_08035A70
	.4byte sub_08035AB4
	.4byte sub_08035AEC
	.4byte sub_08035B34

gUnk_080CF0C4:: @ 080CF0C4
	.4byte sub_08035F7C
	.4byte sub_08036078
	.4byte sub_080360E8
	.4byte sub_080360C8
	.4byte sub_08036188

gUnk_080CF0D8:: @ 080CF0D8
	.incbin "baserom.gba", 0x0CF0D8, 0x0000004

gUnk_080CF0DC:: @ 080CF0DC
	.incbin "baserom.gba", 0x0CF0DC, 0x0000004

gUnk_080CF0E0:: @ 080CF0E0
	.4byte sub_080361F4
	.4byte sub_0803623C
	.4byte sub_080362A8
	.4byte sub_08036304

gUnk_080CF0F0:: @ 080CF0F0
	.4byte sub_08036390
	.4byte sub_080363CC
	.4byte sub_08036658
	.4byte sub_080366B4

gUnk_080CF100:: @ 080CF100
	.4byte sub_08036764
	.4byte sub_080367B0
	.4byte sub_08036870

gUnk_080CF10C:: @ 080CF10C
	.incbin "baserom.gba", 0x0CF10C, 0x0000004

gUnk_080CF110:: @ 080CF110
	.incbin "baserom.gba", 0x0CF110, 0x0000004

gUnk_080CF114:: @ 080CF114
	.incbin "baserom.gba", 0x0CF114, 0x0000005

gUnk_080CF119:: @ 080CF119
	.incbin "baserom.gba", 0x0CF119, 0x0000005

gUnk_080CF11E:: @ 080CF11E
	.incbin "baserom.gba", 0x0CF11E, 0x0000006

gUnk_080CF124:: @ 080CF124
	.4byte gUnk_080CF114
	.4byte gUnk_080CF119
	.4byte gUnk_080CF11E
	.4byte gUnk_080CF119

gUnk_080CF134:: @ 080CF134
	.incbin "baserom.gba", 0x0CF134, 0x0000004

gUnk_080CF138:: @ 080CF138
	.incbin "baserom.gba", 0x0CF138, 0x0000004

gUnk_080CF13C:: @ 080CF13C
	.incbin "baserom.gba", 0x0CF13C, 0x0000003

gUnk_080CF13F:: @ 080CF13F
	.incbin "baserom.gba", 0x0CF13F, 0x0000003

gUnk_080CF142:: @ 080CF142
	.incbin "baserom.gba", 0x0CF142, 0x0000005

gUnk_080CF147:: @ 080CF147
	.incbin "baserom.gba", 0x0CF147, 0x0000005
