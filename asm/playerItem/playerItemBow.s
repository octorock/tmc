	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_08018FE4
sub_08018FE4: @ 0x08018FE4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r3, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r5, [r4, #0xa]
	cmp r5, #0
	bne _08018FF6
	b _080190FC
_08018FF6:
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x6a
	str r0, [r4, #0x74]
	ldrb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x40
	strb r0, [r1]
	movs r0, #0xa6
	strh r0, [r4, #0x12]
	ldrb r0, [r1]
	adds r6, r1, #0
	cmp r0, #0xe
	bne _08019026
	movs r0, #0x80
	lsls r0, r0, #3
	b _0801902A
_08019026:
	movs r0, #0xc0
	lsls r0, r0, #2
_0801902A:
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldr r2, _0801905C @ =gPlayerEntity
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x3c
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	subs r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	adds r5, r2, #0
	cmp r0, #2
	bne _08019060
	movs r0, #1
	b _08019062
	.align 2, 0
_0801905C: .4byte gPlayerEntity
_08019060:
	movs r0, #0
_08019062:
	strb r0, [r4, #0xb]
	ldrb r1, [r5, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _080190F8 @ =gUnk_080B3E40
	adds r3, r3, r0
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrh r1, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	movs r0, #1
	ldrsb r0, [r3, r0]
	ldrh r5, [r5, #0x32]
	adds r0, r0, r5
	strh r0, [r4, #0x32]
	ldrb r1, [r3, #2]
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r3, #3]
	lsls r1, r1, #7
	movs r2, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r3, #6]
	adds r5, r4, #0
	adds r5, #0x58
	strb r0, [r5]
	movs r0, #4
	ldrsb r0, [r3, r0]
	str r0, [r4, #0x6c]
	movs r0, #5
	ldrsb r0, [r3, r0]
	str r0, [r4, #0x70]
	ldr r0, [r3, #8]
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0801766C
	ldrb r0, [r6]
	cmp r0, #0xe
	bne _080190E8
	ldrb r0, [r5]
	adds r0, #6
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #0
	strh r0, [r1]
_080190E8:
	ldrb r1, [r5]
	adds r0, r4, #0
	bl InitializeAnimation
	movs r0, #0xfc
	bl SoundReq
	b _08019178
	.align 2, 0
_080190F8: .4byte gUnk_080B3E40
_080190FC:
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldr r2, _08019168 @ =gUnk_080B3E40
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #2]
	ands r1, r3
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _0801916C @ =gPlayerState
	str r4, [r0, #0x2c]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_08079BD8
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _08019170
	movs r0, #0x3c
	str r0, [r4, #0x78]
	ldrb r1, [r4, #0xa]
	movs r0, #0x43
	movs r2, #1
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08019172
	adds r0, r4, #0
	bl CopyPosition
	b _08019172
	.align 2, 0
_08019168: .4byte gUnk_080B3E40
_0801916C: .4byte gPlayerState
_08019170:
	str r5, [r4, #0x78]
_08019172:
	adds r0, r4, #0
	bl sub_0801917C
_08019178:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_start sub_0801917C
sub_0801917C: @ 0x0801917C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	cmp r2, #0
	bne _08019188
	b _0801934A
_08019188:
	ldr r0, [r4, #0x74]
	subs r0, #1
	str r0, [r4, #0x74]
	cmp r0, #0
	bne _0801919C
	adds r0, r4, #0
	bl sub_08019468
	bl DeleteThisEntity
_0801919C:
	adds r0, r4, #0
	bl GetNextFrame
	ldr r0, [r4, #0x74]
	cmp r0, #0x17
	bhi _080191BA
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080191BA:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r1, [r0]
	movs r5, #4
	adds r6, r0, #0
	cmp r1, #0xe
	bne _080191D0
	movs r5, #1
_080191D0:
	ldr r2, [r4, #0x6c]
	ldr r3, [r4, #0x70]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08008782
	cmp r0, #0
	beq _080191EE
	ldrb r0, [r6]
	cmp r0, #0xe
	beq _080191EA
	bl DeleteThisEntity
_080191EA:
	movs r7, #1
	b _080191F0
_080191EE:
	movs r7, #0
_080191F0:
	ldrb r0, [r6]
	cmp r0, #0xe
	bne _0801920E
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0801920E
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0
	bl CreateFx
_0801920E:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0801921A
	adds r0, r4, #0
	bl sub_0800451C
_0801921A:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08019288 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0801928C @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _080192D0
	cmp r7, #0
	bne _080192D0
	ldr r1, _08019290 @ =gUnk_08003E44
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	movs r5, #0x32
	ldrsh r3, [r4, r5]
	adds r0, r4, #0
	bl sub_080040D8
	cmp r0, #0
	beq _080192D0
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r6]
	cmp r0, #0xe
	bne _08019294
	adds r0, r4, #0
	bl sub_08019468
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r1, #0xf
	adds r0, r4, #0
	bl InitializeAnimation
	b _080192A2
	.align 2, 0
_08019288: .4byte gRoomControls
_0801928C: .4byte gPlayerEntity
_08019290: .4byte gUnk_08003E44
_08019294:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r1, #2
	adds r0, r4, #0
	bl InitializeAnimation
_080192A2:
	adds r0, r4, #0
	bl sub_08017744
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	movs r0, #0
	strb r1, [r4, #0x10]
	strh r0, [r4, #0x24]
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bge _080192BC
	movs r0, #0
_080192BC:
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bge _080192C6
	movs r0, #0
_080192C6:
	str r0, [r4, #0x30]
	movs r0, #0xc5
	lsls r0, r0, #1
	bl SoundReq
_080192D0:
	adds r5, r4, #0
	adds r5, #0x41
	ldrb r0, [r5]
	cmp r0, #0
	bne _080192DC
	b _08019402
_080192DC:
	cmp r7, #0
	beq _080192E2
	b _08019402
_080192E2:
	ldrb r0, [r6]
	cmp r0, #0xe
	bne _080192EE
	adds r0, r4, #0
	bl sub_08019468
_080192EE:
	adds r0, r4, #0
	bl sub_08017744
	ldrb r1, [r5]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x42
	bne _08019336
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #6
	bl InitializeAnimation
	b _08019402
_08019336:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	b _08019402
_0801934A:
	ldr r1, _0801938C @ =gPlayerState
	ldr r0, [r1, #0x2c]
	cmp r0, r4
	bne _0801935E
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _08019368
	str r0, [r1, #0x2c]
_0801935E:
	adds r0, r1, #0
	adds r0, #0x21
	strb r2, [r0]
	bl DeleteThisEntity
_08019368:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _08019398
	ldr r0, _0801938C @ =gPlayerState
	adds r2, r0, #0
	adds r2, #0x21
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	beq _08019398
	cmp r1, #0x77
	bhi _08019390
	adds r0, #1
	strb r0, [r2]
	b _08019398
	.align 2, 0
_0801938C: .4byte gPlayerState
_08019390:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xe
	strb r0, [r1]
_08019398:
	ldr r0, _08019404 @ =gSave
	adds r0, #0xad
	ldrb r5, [r0]
	ldrb r1, [r4, #0x1e]
	ldr r2, [r4, #0x78]
	subs r1, r1, r2
	ldr r0, _08019408 @ =gPlayerEntity
	ldrb r0, [r0, #0x1e]
	cmp r1, r0
	beq _080193C2
	adds r0, r0, r2
	strb r0, [r4, #0x1e]
	cmp r5, #0
	bne _080193B8
	adds r0, #0x2a
	strb r0, [r4, #0x1e]
_080193B8:
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_080193C2:
	ldr r0, _08019408 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080193FA
	cmp r5, #0
	beq _080193FA
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r2, [r0]
	movs r0, #4
	movs r1, #1
	movs r3, #9
	bl CreatePlayerItem
	cmp r0, #0
	beq _080193FA
	ldr r2, _0801940C @ =gPlayerState
	ldrb r1, [r2, #4]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #4]
	movs r0, #1
	rsbs r0, r0, #0
	bl ModArrows
_080193FA:
	ldr r1, _08019408 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_08078E84
_08019402:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08019404: .4byte gSave
_08019408: .4byte gPlayerEntity
_0801940C: .4byte gPlayerState
