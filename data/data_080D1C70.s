	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2


	@ TODO convert .inc files into .s files and include them in linker.ld
	.include "data/animations/enemy/gyorgMale.inc"

	.include "data/const/enemy/curtain.inc"
	.include "data/animations/enemy/curtain.inc"

	.include "data/const/enemy/enemy5F.inc"
	.include "data/animations/enemy/enemy5F.inc"

	.include "data/const/enemy/gyorgChild.inc"