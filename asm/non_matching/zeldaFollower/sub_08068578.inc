	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r4, _08068664 @ =gPlayerEntity
	ldrh r1, [r4, #0x2e]
	ldr r3, _08068668 @ =0xFFFF0000
	adds r0, r3, #0
	ands r0, r5
	orrs r0, r1
	ldrh r1, [r4, #0x32]
	lsls r1, r1, #0x10
	ldr r2, _0806866C @ =0x0000FFFF
	ands r0, r2
	adds r5, r0, #0
	orrs r5, r1
	ldrh r0, [r4, #0x36]
	ands r3, r6
	orrs r3, r0
	ldr r0, _08068670 @ =gPlayerState
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _08068674 @ =0xFF00FFFF
	ands r2, r3
	orrs r2, r0
	ldrb r1, [r4, #0x14]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #0x18
	ldr r0, _08068678 @ =0xC0FFFFFF
	ands r0, r2
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	ldr r2, _0806867C @ =0x3FFFFFFF
	ands r0, r2
	adds r6, r0, #0
	orrs r6, r1
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	mov sl, r1
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r2, #0x32
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	mov r8, r1
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x14
	bl FixedDiv
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x14
	bl FixedDiv
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [r7, #0x64]
	movs r0, #0
	mov sb, r0
	mov ip, r0
	movs r4, #0x13
_08068614:
	mov r1, ip
	asrs r0, r1, #8
	subs r0, r5, r0
	strh r0, [r3]
	lsrs r0, r5, #0x10
	mov r2, sb
	asrs r1, r2, #8
	subs r0, r0, r1
	strh r0, [r3, #2]
	strh r6, [r3, #4]
	lsrs r0, r6, #0x10
	strb r0, [r3, #6]
	ldrb r0, [r7, #0x14]
	movs r1, #0x3f
	ands r1, r0
	ldrb r2, [r3, #7]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #7]
	adds r1, r7, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #6
	movs r2, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #7]
	adds r3, #8
	add sb, r8
	add ip, sl
	subs r4, #1
	cmp r4, #0
	bge _08068614
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08068664: .4byte gPlayerEntity
_08068668: .4byte 0xFFFF0000
_0806866C: .4byte 0x0000FFFF
_08068670: .4byte gPlayerState
_08068674: .4byte 0xFF00FFFF
_08068678: .4byte 0xC0FFFFFF
_0806867C: .4byte 0x3FFFFFFF
	.syntax divided
