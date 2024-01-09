	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"gameStructs.c"
	.text
	.align	2
	.global	initSounds
	.type	initSounds, %function
initSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	mov	r3, #11008
	ldr	r8, .L2
	mov	sl, #2608
	ldr	r9, .L2+4
	add	r3, r3, #17
	add	sl, sl, #10
	ldr	r6, .L2+8
	mov	r7, #2800
	stmia	r8, {r9, sl}	@ phole stm
	str	r3, [r8, #8]
	ldr	r8, .L2+12
	add	r7, r7, #9
	ldr	r4, .L2+16
	mov	r5, #13568
	str	r8, [r6, #0]
	str	r7, [r6, #4]
	str	r3, [r6, #8]
	ldr	r6, .L2+20
	add	r5, r5, #40
	ldr	r0, .L2+24
	mov	ip, #8704
	str	r6, [r4, #0]
	str	r5, [r4, #4]
	str	r3, [r4, #8]
	ldr	r4, .L2+28
	add	ip, ip, #45
	ldr	r2, .L2+32
	mov	r1, #5568
	stmia	r0, {r4, ip}	@ phole stm
	str	r3, [r0, #8]
	ldr	r0, .L2+36
	add	r1, r1, #35
	stmia	r2, {r0, r1, r3}	@ phole stm
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	bx	lr
.L3:
	.align	2
.L2:
	.word	swordSound
	.word	swordSound1
	.word	swordMissSound
	.word	swordMiss
	.word	swordBlockSound
	.word	swordBlock
	.word	enemySwordHitSound
	.word	enemySwordHit
	.word	healSound
	.word	heal
	.size	initSounds, .-initSounds
	.align	2
	.global	playerAttackEnemy
	.type	playerAttackEnemy, %function
playerAttackEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	ldr	r3, [r0, #92]
	cmp	r3, #0
	beq	.L12
	ldr	r3, [r0, #64]
	cmn	r3, #10
	blt	.L10
	ldr	r2, .L15
	ldr	r3, [r2, #48]
	cmp	r3, #0
	beq	.L6
	ldr	r3, [r2, #20]
	ldr	r1, [r0, #20]
	mov	r3, r3, asr #4
	rsb	r3, r3, r1, asr #4
	cmp	r3, #63
	bgt	.L10
	ldr	r3, [r2, #24]
	ldr	r1, [r0, #24]
	mov	r3, r3, asr #4
	mov	r1, r1, asr #4
	cmp	r3, r1
	ble	.L10
	ldr	r0, [r0, #8]
	rsb	r3, r0, r3
	add	r3, r3, #1
	ldr	r2, [r2, #16]
	rsb	r1, r1, r3
	cmp	r1, r2
	movge	r0, #0
	movlt	r0, #1
	b	.L5
.L6:
	ldr	r1, [r2, #20]
	ldr	ip, [r0, #20]
	mov	r1, r1, asr #4
	rsb	r1, r1, ip, asr #4
	cmp	r1, #63
	bgt	.L12
	ldr	ip, [r0, #24]
	ldr	r4, [r2, #24]
	ldr	r1, [r2, #8]
	ldr	r0, [r0, #8]
	mov	ip, ip, asr #4
	add	r1, r1, r4, asr #4
	add	r0, ip, r0
	cmp	r1, r0
	blt	.L14
.L12:
	mov	r0, r3
.L5:
	ldmfd	sp!, {r4}
	bx	lr
.L10:
	mov	r0, #0
	b	.L5
.L14:
	add	ip, ip, #1
	ldr	r3, [r2, #16]
	rsb	r1, r1, ip
	cmp	r1, r3
	movge	r0, #0
	movlt	r0, #1
	b	.L5
.L16:
	.align	2
.L15:
	.word	player
	.size	playerAttackEnemy, .-playerAttackEnemy
	.align	2
	.global	initPlayer
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L18
	mov	ip, #108
	str	ip, [r3, #4]
	mov	ip, #2944
	str	ip, [r3, #20]
	mov	ip, #32
	mov	r0, #5
	str	ip, [r3, #24]
	mov	ip, #18
	mov	r2, #0
	mov	r1, #1000
	str	ip, [r3, #8]
	str	r0, [r3, #68]
	mov	ip, #64
	str	r0, [r3, #64]
	mov	r0, #30
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	ip, [r3, #12]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #60]
	str	r2, [r3, #80]
	str	r2, [r3, #92]
	str	r2, [r3, #96]
	str	r2, [r3, #72]
	str	r2, [r3, #56]
	str	r0, [r3, #16]
	str	r1, [r3, #84]
	str	r1, [r3, #88]
	str	r2, [r3, #104]
	bx	lr
.L19:
	.align	2
.L18:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	playerCheckMoveRight
	.type	playerCheckMoveRight, %function
playerCheckMoveRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L24
	stmfd	sp!, {r4, r5}
	ldr	ip, [r3, #8]
	add	r2, r3, #20
	ldmia	r2, {r2, r4}	@ phole ldm
	sub	r5, ip, #1
	add	r5, r5, r4, asr #4
	mov	r2, r2, asr #4
	add	r1, r5, r1
	add	r5, r2, r2, asl #1
	add	r5, r1, r5, asl #9
	mov	r5, r5, asl #1
	ldrh	r5, [r0, r5]
	cmp	r5, #0
	moveq	r0, r5
	beq	.L21
	ldr	r5, [r3, #12]
	add	r2, r2, r5
	add	r2, r2, r2, asl #1
	add	r1, r1, r2, asl #9
	sub	r1, r1, #6144
	mov	r1, r1, asl #1
	ldrh	r0, [r0, r1]
	cmp	r0, #0
	beq	.L21
	ldr	r0, [r3, #32]
	ldr	r3, .L24+4
	add	r4, r4, r0
	ldr	r3, [r3, #0]
	add	ip, ip, r4, asr #4
	cmp	ip, r3
	movge	r0, #0
	movlt	r0, #1
.L21:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L25:
	.align	2
.L24:
	.word	player
	.word	stageColLimit
	.size	playerCheckMoveRight, .-playerCheckMoveRight
	.align	2
	.global	playerCheckMoveLeft
	.type	playerCheckMoveLeft, %function
playerCheckMoveLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L30
	str	r4, [sp, #-4]!
	add	r2, r3, #20
	ldmia	r2, {r2, ip}	@ phole ldm
	mov	r2, r2, asr #4
	add	r1, r1, ip, asr #4
	add	r4, r2, r2, asl #1
	add	r4, r1, r4, asl #9
	mov	r4, r4, asl #1
	ldrh	r4, [r0, r4]
	cmp	r4, #0
	moveq	r0, r4
	beq	.L27
	ldr	r4, [r3, #12]
	add	r2, r2, r4
	add	r2, r2, r2, asl #1
	add	r1, r1, r2, asl #9
	sub	r1, r1, #3072
	mov	r1, r1, asl #1
	ldrh	r0, [r0, r1]
	cmp	r0, #0
	beq	.L27
	ldr	r2, [r3, #32]
	ldr	r3, .L30+4
	ldr	r3, [r3, #0]
	add	ip, ip, r2
	cmp	r3, ip, asr #4
	movge	r0, #0
	movlt	r0, #1
.L27:
	ldmfd	sp!, {r4}
	bx	lr
.L31:
	.align	2
.L30:
	.word	player
	.word	stageMinColLimit
	.size	playerCheckMoveLeft, .-playerCheckMoveLeft
	.align	2
	.global	playerCheckMoveUp
	.type	playerCheckMoveUp, %function
playerCheckMoveUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L35
	ldr	ip, [r3, #20]
	ldr	r2, [r3, #24]
	add	ip, r1, ip, asr #4
	add	ip, ip, ip, asl #1
	mov	ip, ip, asl #9
	mov	r2, r2, asr #4
	add	r1, ip, r2
	mov	r1, r1, asl #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	beq	.L34
	ldr	r3, [r3, #8]
	add	ip, ip, r3
	add	r2, ip, r2
	add	r0, r0, r2, asl #1
	ldrh	r0, [r0, #-2]
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L34:
	mov	r0, r1
	bx	lr
.L36:
	.align	2
.L35:
	.word	player
	.size	playerCheckMoveUp, .-playerCheckMoveUp
	.align	2
	.global	playerCheckMoveDown
	.type	playerCheckMoveDown, %function
playerCheckMoveDown:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L40
	ldr	r2, [r3, #12]
	ldr	ip, [r3, #20]
	sub	r2, r2, #1
	add	r2, r2, ip, asr #4
	add	r2, r2, r1
	ldr	r1, [r3, #24]
	add	r2, r2, r2, asl #1
	mov	r2, r2, asl #9
	mov	r1, r1, asr #4
	add	ip, r2, r1
	mov	ip, ip, asl #1
	ldrh	ip, [r0, ip]
	cmp	ip, #0
	beq	.L39
	ldr	r3, [r3, #8]
	add	r2, r2, r3
	add	r1, r2, r1
	add	r0, r0, r1, asl #1
	ldrh	r0, [r0, #-2]
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L39:
	mov	r0, ip
	bx	lr
.L41:
	.align	2
.L40:
	.word	player
	.size	playerCheckMoveDown, .-playerCheckMoveDown
	.align	2
	.global	playerCheckDemoMoveDown
	.type	playerCheckDemoMoveDown, %function
playerCheckDemoMoveDown:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L43
	ldr	r0, [r3, #76]
	cmp	r0, #0
	movle	r0, #0
	movgt	r0, #1
	bx	lr
.L44:
	.align	2
.L43:
	.word	player
	.size	playerCheckDemoMoveDown, .-playerCheckDemoMoveDown
	.align	2
	.global	playerMoveRightLimit
	.type	playerMoveRightLimit, %function
playerMoveRightLimit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L49
	ldr	r4, [r5, #32]
	b	.L46
.L47:
	str	r4, [r5, #32]
.L46:
	mov	r1, r4, asr #4
	ldr	r0, .L49+4
	bl	playerCheckMoveRight
	cmp	r0, #0
	mov	r3, r4
	sub	r4, r4, #16
	beq	.L47
	ldr	r2, [r5, #24]
	cmp	r3, #0
	add	r3, r3, r2
	str	r3, [r5, #24]
	ldrlt	r3, .L49
	movlt	r2, #0
	strlt	r2, [r3, #32]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	player
	.word	collisionmapBitmap
	.size	playerMoveRightLimit, .-playerMoveRightLimit
	.align	2
	.global	playerMoveLeftLimit
	.type	playerMoveLeftLimit, %function
playerMoveLeftLimit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L55
	ldr	r4, [r5, #32]
	b	.L52
.L53:
	str	r4, [r5, #32]
.L52:
	mov	r1, r4, asr #4
	ldr	r0, .L55+4
	bl	playerCheckMoveLeft
	cmp	r0, #0
	mov	r3, r4
	add	r4, r4, #16
	beq	.L53
	ldr	r2, [r5, #24]
	cmp	r3, #0
	add	r3, r3, r2
	str	r3, [r5, #24]
	ldrgt	r3, .L55
	movgt	r2, #0
	strgt	r2, [r3, #32]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	player
	.word	collisionmapBitmap
	.size	playerMoveLeftLimit, .-playerMoveLeftLimit
	.align	2
	.global	playerMoveUpLimit
	.type	playerMoveUpLimit, %function
playerMoveUpLimit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L61
	ldr	r4, [r5, #28]
	b	.L58
.L59:
	str	r4, [r5, #28]
.L58:
	mov	r1, r4, asr #4
	ldr	r0, .L61+4
	bl	playerCheckMoveUp
	cmp	r0, #0
	mov	r3, r4
	add	r4, r4, #16
	beq	.L59
	ldr	r2, [r5, #20]
	cmp	r3, #0
	add	r3, r3, r2
	str	r3, [r5, #20]
	ldrgt	r3, .L61
	movgt	r2, #0
	strgt	r2, [r3, #28]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L62:
	.align	2
.L61:
	.word	player
	.word	collisionmapBitmap
	.size	playerMoveUpLimit, .-playerMoveUpLimit
	.align	2
	.global	playerMoveDownLimit
	.type	playerMoveDownLimit, %function
playerMoveDownLimit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L67
	ldr	r4, [r5, #28]
	b	.L64
.L65:
	str	r4, [r5, #28]
.L64:
	mov	r1, r4, asr #4
	ldr	r0, .L67+4
	bl	playerCheckMoveDown
	cmp	r0, #0
	mov	r3, r4
	sub	r4, r4, #16
	beq	.L65
	ldr	r2, [r5, #20]
	cmp	r3, #0
	add	r3, r3, r2
	str	r3, [r5, #20]
	ldrlt	r3, .L67
	movlt	r2, #0
	strlt	r2, [r3, #28]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	player
	.word	collisionmapBitmap
	.size	playerMoveDownLimit, .-playerMoveDownLimit
	.align	2
	.global	playerFall
	.type	playerFall, %function
playerFall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r0, .L71
	mov	r1, #1
	bl	playerCheckMoveDown
	cmp	r0, #0
	ldrne	r3, .L71+4
	ldrne	r2, [r3, #28]
	addne	r2, r2, #3
	strne	r2, [r3, #28]
	ldmfd	sp!, {r3, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	collisionmapBitmap
	.word	player
	.size	playerFall, .-playerFall
	.align	2
	.global	playerMove
	.type	playerMove, %function
playerMove:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L81
	ldr	r3, [r4, #28]
	cmp	r3, #0
	blt	.L78
	bl	playerMoveDownLimit
.L75:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bgt	.L79
	bne	.L80
.L77:
	ldmfd	sp!, {r4, lr}
	b	playerFall
.L79:
	bl	playerMoveRightLimit
	b	.L77
.L78:
	bl	playerMoveUpLimit
	b	.L75
.L80:
	bl	playerMoveLeftLimit
	b	.L77
.L82:
	.align	2
.L81:
	.word	player
	.size	playerMove, .-playerMove
	.align	2
	.global	playerCheckCanRun
	.type	playerCheckCanRun, %function
playerCheckCanRun:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L94
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L84
	ldr	r0, .L94+4
	mvn	r1, #0
	bl	playerCheckMoveLeft
	cmp	r0, #0
	beq	.L85
	ldr	r0, [r4, #40]
	cmp	r0, #0
	cmpne	r0, #3
	moveq	r0, #1
	beq	.L85
.L93:
	cmp	r0, #4
	movne	r0, #0
	moveq	r0, #1
.L85:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L84:
	ldr	r0, .L94+4
	mov	r1, #1
	bl	playerCheckMoveRight
	cmp	r0, #0
	beq	.L85
	ldr	r0, [r4, #40]
	cmp	r0, #0
	cmpne	r0, #3
	moveq	r0, #1
	bne	.L93
	b	.L85
.L95:
	.align	2
.L94:
	.word	player
	.word	collisionmapBitmap
	.size	playerCheckCanRun, .-playerCheckCanRun
	.align	2
	.global	playerCheckCanAttack
	.type	playerCheckCanAttack, %function
playerCheckCanAttack:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r4, .L104
	ldr	r5, [r4, #48]
	cmp	r5, #0
	beq	.L97
	ldr	r0, .L104+4
	mov	r1, #1
	bl	playerCheckMoveLeft
	cmp	r0, #0
	beq	.L98
	ldr	r0, .L104+4
	mov	r1, #5
	bl	playerCheckMoveDown
	cmp	r0, #0
	movne	r0, #0
	bne	.L98
	ldr	r0, [r4, #100]
	cmp	r0, #0
	movgt	r0, #0
	movle	r0, #1
.L98:
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L97:
	ldr	r0, .L104+4
	mvn	r1, #0
	bl	playerCheckMoveRight
	cmp	r0, #0
	beq	.L98
	ldr	r0, .L104+4
	mov	r1, #5
	bl	playerCheckMoveDown
	cmp	r0, #0
	movne	r0, r5
	bne	.L98
	ldr	r0, [r4, #100]
	cmp	r0, #0
	movgt	r0, #0
	movle	r0, #1
	b	.L98
.L105:
	.align	2
.L104:
	.word	player
	.word	collisionmapBitmap
	.size	playerCheckCanAttack, .-playerCheckCanAttack
	.align	2
	.global	playerCheckCanBlock
	.type	playerCheckCanBlock, %function
playerCheckCanBlock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r0, .L110
	mov	r1, #1
	bl	playerCheckMoveDown
	cmp	r0, #0
	movne	r0, #0
	bne	.L107
	ldr	r3, .L110+4
	ldr	r0, [r3, #40]
	cmp	r0, #0
	cmpne	r0, #3
	moveq	r0, #1
	beq	.L107
	cmp	r0, #2
	movne	r0, #0
	moveq	r0, #1
.L107:
	ldmfd	sp!, {r3, lr}
	bx	lr
.L111:
	.align	2
.L110:
	.word	collisionmapBitmap
	.word	player
	.size	playerCheckCanBlock, .-playerCheckCanBlock
	.align	2
	.global	playerCheckCanJump
	.type	playerCheckCanJump, %function
playerCheckCanJump:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	mov	r1, #1
	ldr	r0, .L113
	bl	playerCheckMoveDown
	rsbs	r0, r0, #1
	movcc	r0, #0
	ldmfd	sp!, {r3, lr}
	bx	lr
.L114:
	.align	2
.L113:
	.word	collisionmapBitmap
	.size	playerCheckCanJump, .-playerCheckCanJump
	.align	2
	.global	playerCheckShouldStandStill
	.type	playerCheckShouldStandStill, %function
playerCheckShouldStandStill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldr	r2, [r3, #304]
	tst	r2, #32
	beq	.L117
	ldr	r3, [r3, #304]
	tst	r3, #16
	moveq	r0, #0
	movne	r0, #1
	bx	lr
.L117:
	mov	r0, #0
	bx	lr
	.size	playerCheckShouldStandStill, .-playerCheckShouldStandStill
	.align	2
	.global	playerCheckShouldIdle
	.type	playerCheckShouldIdle, %function
playerCheckShouldIdle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r0, .L127
	mov	r1, #1
	bl	playerCheckMoveDown
	subs	r4, r0, #0
	movne	r0, #0
	bne	.L119
	ldr	r3, .L127+4
	ldr	r3, [r3, #40]
	cmp	r3, #1
	beq	.L123
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #2
	beq	.L126
.L120:
	ldr	r3, .L127+8
	ldr	r3, [r3, #0]
	tst	r3, #64
	beq	.L125
	ldr	r3, .L127+12
	ldr	r3, [r3, #0]
	tst	r3, #64
	bne	.L125
	bl	playerCheckCanJump
	rsbs	r0, r0, #1
	movcc	r0, #0
.L119:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L126:
	bl	playerCheckCanBlock
	cmp	r0, #0
	beq	.L120
.L123:
	mov	r0, r4
	b	.L119
.L125:
	mov	r0, #1
	b	.L119
.L128:
	.align	2
.L127:
	.word	collisionmapBitmap
	.word	player
	.word	oldButtons
	.word	buttons
	.size	playerCheckShouldIdle, .-playerCheckShouldIdle
	.align	2
	.global	playerCheckShouldDemoIdle
	.type	playerCheckShouldDemoIdle, %function
playerCheckShouldDemoIdle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L138
	ldr	r2, [r3, #76]
	cmp	r2, #0
	ble	.L137
.L134:
	mov	r0, #0
.L130:
	ldmfd	sp!, {r3, lr}
	bx	lr
.L137:
	ldr	r3, [r3, #40]
	cmp	r3, #1
	beq	.L134
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #2
	bne	.L131
	bl	playerCheckCanBlock
	cmp	r0, #0
	bne	.L134
.L131:
	ldr	r3, .L138+4
	ldr	r3, [r3, #0]
	tst	r3, #64
	beq	.L136
	ldr	r3, .L138+8
	ldr	r3, [r3, #0]
	tst	r3, #64
	bne	.L136
	bl	playerCheckCanJump
	rsbs	r0, r0, #1
	movcc	r0, #0
	b	.L130
.L136:
	mov	r0, #1
	b	.L130
.L139:
	.align	2
.L138:
	.word	player
	.word	oldButtons
	.word	buttons
	.size	playerCheckShouldDemoIdle, .-playerCheckShouldDemoIdle
	.align	2
	.global	updatePlayerScreenPosition
	.type	updatePlayerScreenPosition, %function
updatePlayerScreenPosition:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L149
	ldr	r1, .L149+4
	stmfd	sp!, {r4, r5, r6, r7}
	ldr	r0, [r2, #24]
	ldr	r3, [r1, #0]
	ldr	r5, [r2, #8]
	ldr	r4, [r2, #48]
	mov	r0, r0, asr #4
	rsb	ip, r3, r0
	sub	r5, r5, #64
	mla	r5, r4, r5, ip
	ldr	r6, .L149+8
	ldr	r7, [r2, #20]
	ldr	r6, [r6, #0]
	cmp	r4, #0
	rsb	r4, r6, r7, asr #4
	stmia	r2, {r4, r5}	@ phole stm
	bne	.L141
	cmp	ip, #72
	beq	.L143
	ldr	r2, [r2, #32]
	add	r3, r3, #2
	add	r3, r3, r2, asr #4
	rsb	r2, r3, r0
	cmp	r2, #71
	str	r3, [r1, #0]
	suble	r3, r0, #72
	strle	r3, [r1, #0]
.L143:
	ldr	r2, .L149+12
	ldr	r4, [r2, #0]
	sub	r0, r4, #240
	cmp	r0, r3
	ldr	ip, .L149+16
	movle	r3, r0
	ldr	r2, [ip, #0]
	strle	r0, [r1, #0]
	cmp	r3, #784
	movge	r3, #784
	strge	r3, [r1, #0]
	cmp	r3, r2
	movgt	r2, r3
	sub	r4, r4, #239
	strgt	r3, [ip, #0]
	cmp	r2, r4
	movge	r2, r0
	strge	r0, [ip, #0]
	cmp	r2, r3
	strgt	r2, [r1, #0]
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L141:
	cmp	ip, #150
	beq	.L143
	ldr	r2, [r2, #32]
	mov	r2, r2, asr #4
	sub	r2, r2, #2
	add	r3, r3, r2
	rsb	r2, r3, r0
	cmp	r2, #150
	str	r3, [r1, #0]
	subgt	r3, r0, #150
	strgt	r3, [r1, #0]
	b	.L143
.L150:
	.align	2
.L149:
	.word	player
	.word	hOff
	.word	vOff
	.word	stageColLimit
	.word	stageMinColLimit
	.size	updatePlayerScreenPosition, .-updatePlayerScreenPosition
	.align	2
	.global	updateEnemyScreenPosition
	.type	updateEnemyScreenPosition, %function
updateEnemyScreenPosition:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L152
	ldr	ip, [r0, #24]
	ldr	r2, [r3, #0]
	ldr	r3, [r0, #8]
	ldr	r1, [r0, #48]
	rsb	r2, r2, ip, asr #4
	sub	r3, r3, #32
	mla	r3, r1, r3, r2
	ldr	r2, .L152+4
	ldr	r1, [r0, #20]
	ldr	r2, [r2, #0]
	rsb	r2, r2, r1, asr #4
	stmia	r0, {r2, r3}	@ phole stm
	bx	lr
.L153:
	.align	2
.L152:
	.word	hOff
	.word	vOff
	.size	updateEnemyScreenPosition, .-updateEnemyScreenPosition
	.align	2
	.global	updateEnemiesScreenPosition
	.type	updateEnemiesScreenPosition, %function
updateEnemiesScreenPosition:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L157
	stmfd	sp!, {r4, r5}
	ldr	r5, [r2, #0]
	ldr	r2, .L157+4
	ldr	r3, .L157+8
	ldr	r4, [r2, #0]
	add	ip, r3, #1000
.L155:
	ldr	r1, [r3, #4]
	ldr	r2, [r3, #-12]
	ldr	r0, [r3, #28]
	rsb	r1, r4, r1, asr #4
	sub	r2, r2, #32
	mla	r2, r0, r2, r1
	ldr	r1, [r3, #0]
	rsb	r1, r5, r1, asr #4
	str	r1, [r3, #-20]
	str	r2, [r3, #-16]
	add	r3, r3, #100
	cmp	r3, ip
	bne	.L155
	ldmfd	sp!, {r4, r5}
	bx	lr
.L158:
	.align	2
.L157:
	.word	vOff
	.word	hOff
	.word	enemies+20
	.size	updateEnemiesScreenPosition, .-updateEnemiesScreenPosition
	.align	2
	.global	enemyCheckMoveRight
	.type	enemyCheckMoveRight, %function
enemyCheckMoveRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}
	ldr	ip, [r0, #8]
	add	r3, r0, #20
	ldmia	r3, {r3, r4}	@ phole ldm
	sub	r5, ip, #1
	add	r5, r5, r4, asr #4
	mov	r3, r3, asr #4
	add	r2, r5, r2
	add	r5, r3, r3, asl #1
	add	r5, r2, r5, asl #9
	mov	r5, r5, asl #1
	ldrh	r5, [r1, r5]
	cmp	r5, #0
	beq	.L162
	ldr	r5, [r0, #12]
	add	r3, r3, r5
	add	r3, r3, r3, asl #1
	add	r2, r2, r3, asl #9
	sub	r2, r2, #3072
	mov	r2, r2, asl #1
	ldrh	r5, [r1, r2]
	cmp	r5, #0
	bne	.L164
.L162:
	mov	r0, r5
.L160:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L164:
	ldr	r3, [r0, #32]
	add	r4, r4, r3
	ldr	r3, .L165
	ldr	r3, [r3, #0]
	add	ip, ip, r4, asr #4
	cmp	ip, r3
	movlt	r0, #1
	blt	.L160
	ldr	r0, [r0, #84]
	rsbs	r0, r0, #1
	movcc	r0, #0
	b	.L160
.L166:
	.align	2
.L165:
	.word	stageColLimit
	.size	enemyCheckMoveRight, .-enemyCheckMoveRight
	.align	2
	.global	enemyCheckMoveLeft
	.type	enemyCheckMoveLeft, %function
enemyCheckMoveLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	add	r3, r0, #20
	ldmia	r3, {r3, ip}	@ phole ldm
	mov	r3, r3, asr #4
	add	r2, r2, ip, asr #4
	add	r4, r3, r3, asl #1
	add	r4, r2, r4, asl #9
	mov	r4, r4, asl #1
	ldrh	r4, [r1, r4]
	cmp	r4, #0
	beq	.L170
	ldr	r4, [r0, #12]
	add	r3, r3, r4
	add	r3, r3, r3, asl #1
	add	r2, r2, r3, asl #9
	sub	r2, r2, #3072
	mov	r2, r2, asl #1
	ldrh	r4, [r1, r2]
	cmp	r4, #0
	bne	.L172
.L170:
	mov	r0, r4
.L168:
	ldmfd	sp!, {r4}
	bx	lr
.L172:
	ldr	r3, .L173
	ldr	r2, [r0, #32]
	ldr	r3, [r3, #0]
	add	ip, ip, r2
	cmp	r3, ip, asr #4
	movle	r0, #1
	ble	.L168
	ldr	r0, [r0, #84]
	rsbs	r0, r0, #1
	movcc	r0, #0
	b	.L168
.L174:
	.align	2
.L173:
	.word	stageMinColLimit
	.size	enemyCheckMoveLeft, .-enemyCheckMoveLeft
	.align	2
	.global	enemyCheckMoveUp
	.type	enemyCheckMoveUp, %function
enemyCheckMoveUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #20]
	ldr	r3, [r0, #24]
	add	ip, r2, ip, asr #4
	add	ip, ip, ip, asl #1
	mov	ip, ip, asl #9
	mov	r3, r3, asr #4
	add	r2, ip, r3
	mov	r2, r2, asl #1
	ldrh	r2, [r1, r2]
	cmp	r2, #0
	beq	.L177
	ldr	r2, [r0, #8]
	add	ip, ip, r2
	add	r3, ip, r3
	add	r1, r1, r3, asl #1
	ldrh	r0, [r1, #-2]
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L177:
	mov	r0, r2
	bx	lr
	.size	enemyCheckMoveUp, .-enemyCheckMoveUp
	.align	2
	.global	enemyCheckMoveDown
	.type	enemyCheckMoveDown, %function
enemyCheckMoveDown:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	ldr	ip, [r0, #20]
	sub	r3, r3, #1
	add	r3, r3, ip, asr #4
	add	r3, r3, r2
	ldr	r2, [r0, #24]
	add	r3, r3, r3, asl #1
	mov	r3, r3, asl #9
	mov	r2, r2, asr #4
	add	ip, r3, r2
	mov	ip, ip, asl #1
	ldrh	ip, [r1, ip]
	cmp	ip, #0
	beq	.L180
	ldr	r0, [r0, #8]
	add	r3, r3, r0
	add	r2, r3, r2
	add	r1, r1, r2, asl #1
	ldrh	r0, [r1, #-2]
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L180:
	mov	r0, ip
	bx	lr
	.size	enemyCheckMoveDown, .-enemyCheckMoveDown
	.align	2
	.global	enemyMoveRightLimit
	.type	enemyMoveRightLimit, %function
enemyMoveRightLimit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r3, [r0, #32]
	b	.L182
.L183:
	str	r3, [r5, #32]
.L182:
	mov	r2, r3, asr #4
	mov	r0, r5
	ldr	r1, .L186
	mov	r4, r3
	bl	enemyCheckMoveRight
	cmp	r0, #0
	sub	r3, r4, #16
	beq	.L183
	ldr	r3, [r5, #24]
	cmp	r4, #0
	add	r3, r4, r3
	ldr	r2, .L186+4
	movlt	r4, #0
	str	r3, [r5, #24]
	ldr	r1, [r5, #8]
	add	r3, r4, r3
	mov	r3, r3, asr #4
	ldr	r2, [r2, #0]
	add	r1, r3, r1
	strlt	r4, [r5, #32]
	cmp	r1, r2
	bge	.L181
	ldr	r2, .L186+8
	ldr	r2, [r2, #0]
	cmp	r3, r2
	movge	r3, #1
	strge	r3, [r5, #84]
.L181:
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L187:
	.align	2
.L186:
	.word	collisionmapBitmap
	.word	stageColLimit
	.word	stageMinColLimit
	.size	enemyMoveRightLimit, .-enemyMoveRightLimit
	.align	2
	.global	enemyMoveLeftLimit
	.type	enemyMoveLeftLimit, %function
enemyMoveLeftLimit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r3, [r0, #32]
	b	.L189
.L190:
	str	r3, [r5, #32]
.L189:
	mov	r2, r3, asr #4
	mov	r0, r5
	ldr	r1, .L193
	mov	r4, r3
	bl	enemyCheckMoveLeft
	cmp	r0, #0
	add	r3, r4, #16
	beq	.L190
	ldr	r3, [r5, #24]
	cmp	r4, #0
	add	r3, r4, r3
	ldr	r2, .L193+4
	movgt	r4, #0
	str	r3, [r5, #24]
	ldr	r1, [r5, #8]
	add	r3, r4, r3
	mov	r3, r3, asr #4
	ldr	r2, [r2, #0]
	add	r1, r3, r1
	strgt	r4, [r5, #32]
	cmp	r1, r2
	bge	.L188
	ldr	r2, .L193+8
	ldr	r2, [r2, #0]
	cmp	r3, r2
	movge	r3, #1
	strge	r3, [r5, #84]
.L188:
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L194:
	.align	2
.L193:
	.word	collisionmapBitmap
	.word	stageColLimit
	.word	stageMinColLimit
	.size	enemyMoveLeftLimit, .-enemyMoveLeftLimit
	.align	2
	.global	enemyMoveUpLimit
	.type	enemyMoveUpLimit, %function
enemyMoveUpLimit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r4, [r0, #28]
	b	.L196
.L197:
	str	r4, [r5, #28]
.L196:
	mov	r2, r4, asr #4
	mov	r0, r5
	ldr	r1, .L199
	bl	enemyCheckMoveUp
	cmp	r0, #0
	mov	r3, r4
	add	r4, r4, #16
	beq	.L197
	ldr	r2, [r5, #20]
	cmp	r3, #0
	add	r3, r2, r3
	str	r3, [r5, #20]
	movgt	r3, #0
	strgt	r3, [r5, #28]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L200:
	.align	2
.L199:
	.word	collisionmapBitmap
	.size	enemyMoveUpLimit, .-enemyMoveUpLimit
	.align	2
	.global	enemyMoveDownLimit
	.type	enemyMoveDownLimit, %function
enemyMoveDownLimit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r4, [r0, #28]
	b	.L202
.L203:
	str	r4, [r5, #28]
.L202:
	mov	r2, r4, asr #4
	mov	r0, r5
	ldr	r1, .L205
	bl	enemyCheckMoveDown
	cmp	r0, #0
	mov	r3, r4
	sub	r4, r4, #16
	beq	.L203
	ldr	r2, [r5, #20]
	cmp	r3, #0
	add	r3, r2, r3
	str	r3, [r5, #20]
	movlt	r3, #0
	strlt	r3, [r5, #28]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L206:
	.align	2
.L205:
	.word	collisionmapBitmap
	.size	enemyMoveDownLimit, .-enemyMoveDownLimit
	.global	__aeabi_idivmod
	.align	2
	.global	playerAttack
	.type	playerAttack, %function
playerAttack:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, .L245
	sub	sp, sp, #20
	ldr	r3, [r4, #100]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #100]
	ldr	r3, [r4, #40]
	cmp	r3, #1
	ldr	r2, .L245
	beq	.L238
.L207:
	add	sp, sp, #20
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L238:
	add	r3, r2, #48
	ldmia	r3, {r3, r5}	@ phole ldm
	rsb	r3, r3, r3, asl #31
	mov	r3, r3, asl #1
	cmp	r5, #2
	add	r3, r3, #1
	movle	r3, #0
	ble	.L210
	cmp	r5, #4
	movle	r3, r3, asl #1
	ble	.L210
	cmp	r5, #8
	movgt	r2, #0
	movle	r2, #1
	mov	r1, r2, asl #1
	add	r1, r1, r2
	add	r2, r2, r1, asl #2
	mov	r2, r2, asl #1
	mul	r3, r2, r3
.L210:
	ldr	r2, .L245+4
	ldr	r7, .L245+8
	ldr	r0, [r4, #36]
	ldr	r1, [r2, r5, asl #2]
	str	r3, [r4, #32]
	mov	lr, pc
	bx	r7
	cmp	r1, #0
	bne	.L212
	cmp	r5, #3
	cmpne	r5, #7
	bne	.L212
	ldr	r9, .L245+12
	mov	lr, pc
	bx	r9
	ldr	r3, .L245+16
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, asl #1
	rsb	r0, r3, r0
	cmp	r0, #1
	beq	.L215
	cmp	r0, #2
	beq	.L216
	cmp	r0, #0
	bne	.L213
	ldr	r3, .L245+20
	mov	r1, #2608
	mov	r2, #11008
	ldr	r0, .L245+24
	add	r1, r1, #10
	add	r2, r2, #17
	stmia	r3, {r0, r1, r2}	@ phole stm
.L213:
	ldr	r8, .L245+28
	mov	r5, #0
	ldr	fp, .L245+32
	mov	r6, r8
	mov	sl, r5
	b	.L221
.L217:
	add	r5, r5, #1
	cmp	r5, #10
	add	r6, r6, #100
	beq	.L239
.L221:
	ldr	r3, [r6, #92]
	cmp	r3, #0
	beq	.L217
	add	r3, r5, r5, asl #2
	add	r3, r3, r3, asl #2
	add	r3, r8, r3, asl #2
	mov	r0, r3
	str	r3, [sp, #12]
	bl	playerAttackEnemy
	cmp	r0, #0
	beq	.L217
	ldr	r3, [r4, #80]
	cmp	r3, #0
	add	r2, r3, #3
	movlt	r3, r2
	mov	r3, r3, asr #2
	ldr	r2, [r6, #64]
	ldr	r1, [r4, #92]
	rsb	r3, r3, #0
	sub	r2, r2, #2
	sub	r3, r3, #2
	mla	r3, r1, r3, r2
	mov	ip, #0
	str	ip, [r6, #40]
	str	r3, [r6, #64]
	mov	lr, pc
	bx	r9
	smull	lr, r2, fp, r0
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, asl #2
	sub	r3, r0, r3, asl #1
	add	r3, r3, #10
	ldr	r0, [sp, #12]
	str	r3, [r6, #80]
	bl	enemyMoveDownLimit
	ldr	sl, [r4, #48]
	mvn	r2, #11
	cmp	sl, #0
	str	r2, [r6, #28]
	beq	.L240
	ldr	r0, [sp, #12]
	ldr	r1, .L245+36
	mov	r2, #4
	bl	enemyCheckMoveLeft
	cmp	r0, #0
	beq	.L220
.L219:
	mov	lr, pc
	bx	r9
	ldr	r1, [r6, #80]
	rsb	r1, r1, #36
	mov	lr, pc
	bx	r7
	rsb	sl, sl, sl, asl #31
	add	r1, r1, #24
	mov	sl, sl, asl #1
	mla	r1, sl, r1, r1
	str	r1, [r6, #32]
.L220:
	ldr	r3, [r6, #64]
	cmp	r3, #0
	ble	.L241
.L232:
	mov	sl, #1
	b	.L217
.L239:
	ldr	r5, .L245+40
	ldr	r3, [r5, #92]
	cmp	r3, #0
	beq	.L222
	mov	r0, r5
	bl	playerAttackEnemy
	cmp	r0, #0
	bne	.L242
.L222:
	ldr	r2, [r4, #80]
	ldr	r1, [r4, #84]
	add	r3, sl, r2
	mul	r3, sl, r3
	add	r2, r2, #60
	mla	sl, r2, sl, r1
	cmp	r3, #0
	str	sl, [r4, #84]
	str	r3, [r4, #80]
	bne	.L226
	ldr	r2, .L245+44
	mov	ip, #2
	ldmia	r2, {r0, r1, r2}	@ phole ldm
	str	ip, [sp, #0]
	ldr	ip, .L245+48
	mov	lr, pc
	bx	ip
.L227:
	ldr	r3, [r4, #80]
	cmp	r3, #99
	ldr	r3, .L245
	movgt	r2, #99
	strgt	r2, [r3, #80]
	ldr	r5, [r3, #52]
.L212:
	cmp	r5, #9
	bne	.L207
	ldr	r3, [r4, #100]
	cmp	r3, #0
	ldrle	r3, .L245
	movle	r2, #8
	strle	r2, [r3, #100]
	b	.L207
.L241:
	ldr	ip, [r4, #64]
	cmp	ip, #4
	bgt	.L232
	ldr	lr, .L245
	ldr	r3, [lr, #92]
	cmp	r3, #0
	beq	.L232
	ldr	r2, .L245+52
	add	ip, ip, #1
	str	ip, [lr, #64]
	mov	ip, #8
	ldmia	r2, {r0, r1}	@ phole ldm
	mov	r3, #0
	ldr	r2, [r2, #8]
	str	ip, [sp, #0]
	ldr	ip, .L245+48
	mov	sl, #1
	mov	lr, pc
	bx	ip
	b	.L217
.L215:
	ldr	r3, .L245+20
	mov	r1, #2736
	mov	r2, #11008
	ldr	r0, .L245+56
	add	r1, r1, #13
	add	r2, r2, #17
	stmia	r3, {r0, r1, r2}	@ phole stm
	b	.L213
.L240:
	ldr	r0, [sp, #12]
	ldr	r1, .L245+36
	mov	r2, #4
	bl	enemyCheckMoveRight
	cmp	r0, #0
	bne	.L219
	b	.L220
.L226:
	ldr	r3, .L245+20
	mov	ip, #4
	ldmia	r3, {r0, r1, r2}	@ phole ldm
	str	ip, [sp, #0]
	mov	r3, #0
	ldr	ip, .L245+48
	mov	lr, pc
	bx	ip
	b	.L227
.L216:
	ldr	r3, .L245+20
	mov	r1, #2064
	mov	r2, #11008
	ldr	r0, .L245+60
	add	r1, r1, #4
	add	r2, r2, #17
	stmia	r3, {r0, r1, r2}	@ phole stm
	b	.L213
.L242:
	ldr	r2, [r4, #80]
	cmp	r2, #0
	add	r3, r2, #3
	movlt	r2, r3
	ldr	r1, [r5, #64]
	mov	r2, r2, asr #2
	ldr	r3, [r4, #92]
	rsb	r2, r2, #0
	sub	r1, r1, #2
	sub	r2, r2, #2
	mla	r3, r2, r3, r1
	mov	r0, r5
	str	r3, [r5, #64]
	bl	enemyMoveDownLimit
	ldr	r6, [r4, #48]
	mvn	r3, #11
	cmp	r6, #0
	str	r3, [r5, #28]
	beq	.L243
	mov	r0, r5
	ldr	r1, .L245+36
	mov	r2, #4
	bl	enemyCheckMoveLeft
	cmp	r0, #0
	beq	.L225
.L224:
	mov	lr, pc
	bx	r9
	ldr	r1, [r5, #80]
	rsb	r1, r1, #36
	mov	lr, pc
	bx	r7
	rsb	r6, r6, r6, asl #31
	add	r1, r1, #24
	mov	r6, r6, asl #1
	mla	r1, r6, r1, r1
	str	r1, [r5, #32]
.L225:
	ldr	r3, [r5, #64]
	cmp	r3, #0
	ble	.L244
.L235:
	mov	sl, #1
	b	.L222
.L244:
	ldr	lr, [r4, #64]
	cmp	lr, #4
	ldr	ip, .L245
	bgt	.L235
	ldr	r3, [ip, #92]
	cmp	r3, #0
	beq	.L235
	ldr	r3, .L245+52
	add	lr, lr, #1
	str	lr, [ip, #64]
	mov	ip, #8
	ldmia	r3, {r0, r1, r2}	@ phole ldm
	str	ip, [sp, #0]
	mov	r3, #0
	ldr	ip, .L245+48
	mov	sl, #1
	mov	lr, pc
	bx	ip
	b	.L222
.L243:
	mov	r0, r5
	ldr	r1, .L245+36
	mov	r2, #4
	bl	enemyCheckMoveRight
	cmp	r0, #0
	bne	.L224
	b	.L225
.L246:
	.align	2
.L245:
	.word	player
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.word	rand
	.word	1431655766
	.word	swordSound
	.word	swordSound1
	.word	enemies
	.word	1717986919
	.word	collisionmapBitmap
	.word	boss
	.word	swordMissSound
	.word	playSoundB
	.word	healSound
	.word	swordSound2
	.word	swordSound3
	.size	playerAttack, .-playerAttack
	.align	2
	.global	enemyFall
	.type	enemyFall, %function
enemyFall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r1, .L249
	mov	r2, #1
	mov	r4, r0
	bl	enemyCheckMoveDown
	cmp	r0, #0
	ldrne	r3, [r4, #28]
	addne	r3, r3, #3
	strne	r3, [r4, #28]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L250:
	.align	2
.L249:
	.word	collisionmapBitmap
	.size	enemyFall, .-enemyFall
	.align	2
	.global	enemyCheckCanRun
	.type	enemyCheckCanRun, %function
enemyCheckCanRun:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, [r0, #48]
	cmp	r3, #0
	mov	r4, r0
	beq	.L252
	ldr	r1, .L262
	mvn	r2, #0
	bl	enemyCheckMoveLeft
	cmp	r0, #0
	beq	.L253
	ldr	r0, [r4, #40]
	cmp	r0, #0
	cmpne	r0, #3
	moveq	r0, #1
	beq	.L253
.L261:
	cmp	r0, #4
	movne	r0, #0
	moveq	r0, #1
.L253:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L252:
	ldr	r1, .L262
	mov	r2, #1
	bl	enemyCheckMoveRight
	cmp	r0, #0
	beq	.L253
	ldr	r0, [r4, #40]
	cmp	r0, #0
	cmpne	r0, #3
	moveq	r0, #1
	bne	.L261
	b	.L253
.L263:
	.align	2
.L262:
	.word	collisionmapBitmap
	.size	enemyCheckCanRun, .-enemyCheckCanRun
	.align	2
	.global	enemyCheckCanAttack
	.type	enemyCheckCanAttack, %function
enemyCheckCanAttack:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, [r0, #48]
	cmp	r3, #0
	mov	r4, r0
	beq	.L265
	ldr	r1, .L270
	mov	r2, #1
	bl	enemyCheckMoveLeft
	cmp	r0, #0
	beq	.L266
	mov	r0, r4
	ldr	r1, .L270
	mov	r2, #1
	bl	enemyCheckMoveDown
	rsbs	r0, r0, #1
	movcc	r0, #0
.L266:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L265:
	ldr	r1, .L270
	mvn	r2, #0
	bl	enemyCheckMoveRight
	cmp	r0, #0
	beq	.L266
	mov	r0, r4
	ldr	r1, .L270
	mov	r2, #1
	bl	enemyCheckMoveDown
	rsbs	r0, r0, #1
	movcc	r0, #0
	b	.L266
.L271:
	.align	2
.L270:
	.word	collisionmapBitmap
	.size	enemyCheckCanAttack, .-enemyCheckCanAttack
	.align	2
	.global	enemyCheckCanBlock
	.type	enemyCheckCanBlock, %function
enemyCheckCanBlock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r1, .L276
	mov	r2, #1
	mov	r4, r0
	bl	enemyCheckMoveDown
	cmp	r0, #0
	movne	r0, #0
	bne	.L273
	ldr	r0, [r4, #40]
	cmp	r0, #0
	cmpne	r0, #3
	moveq	r0, #1
	beq	.L273
	cmp	r0, #2
	movne	r0, #0
	moveq	r0, #1
.L273:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L277:
	.align	2
.L276:
	.word	collisionmapBitmap
	.size	enemyCheckCanBlock, .-enemyCheckCanBlock
	.align	2
	.global	enemyCheckShouldStandStill
	.type	enemyCheckShouldStandStill, %function
enemyCheckShouldStandStill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldr	r2, [r3, #304]
	tst	r2, #32
	beq	.L280
	ldr	r3, [r3, #304]
	tst	r3, #16
	moveq	r0, #0
	movne	r0, #1
	bx	lr
.L280:
	mov	r0, #0
	bx	lr
	.size	enemyCheckShouldStandStill, .-enemyCheckShouldStandStill
	.align	2
	.global	enemyCheckShouldIdle
	.type	enemyCheckShouldIdle, %function
enemyCheckShouldIdle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	enemyCheckShouldIdle, .-enemyCheckShouldIdle
	.align	2
	.global	enemyAttackPlayer
	.type	enemyAttackPlayer, %function
enemyAttackPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L303
	stmfd	sp!, {r4, r5}
	ldr	r2, [r3, #40]
	cmp	r2, #4
	beq	.L289
	ldr	r1, [r0, #48]
	cmp	r1, #0
	beq	.L284
	ldr	ip, [r3, #24]
	ldr	r4, [r0, #24]
	mov	ip, ip, asr #4
	mov	r4, r4, asr #4
	cmp	ip, r4
	bge	.L289
	ldr	r5, [r3, #8]
	ldr	r0, [r0, #16]
	rsb	ip, ip, r4
	add	r0, r5, r0
	cmp	r0, ip
	bgt	.L301
.L289:
	mov	r0, #0
.L283:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L284:
	ldr	r4, [r3, #24]
	ldr	ip, [r0, #24]
	mov	r4, r4, asr #4
	mov	ip, ip, asr #4
	cmp	r4, ip
	ble	.L294
	ldr	r5, [r0, #8]
	rsb	r4, r5, r4
	sub	r4, r4, #1
	ldr	r0, [r0, #16]
	rsb	ip, ip, r4
	cmp	ip, r0
	bgt	.L294
	cmp	r2, #2
	beq	.L302
.L286:
	ldr	r3, [r3, #92]
	cmp	r3, #0
	mvnne	r0, #1
	bne	.L283
	ldr	r3, .L303
	ldr	r3, [r3, #72]
	cmp	r3, #0
	movle	r0, #1
	mvngt	r0, #1
	b	.L283
.L294:
	mov	r0, r1
	b	.L283
.L301:
	cmp	r2, #2
	bne	.L286
	ldr	r2, [r3, #48]
	cmp	r1, r2
	beq	.L286
	mvn	r0, #0
	b	.L283
.L302:
	ldr	r2, [r3, #48]
	cmp	r2, #0
	beq	.L286
	mvn	r0, #0
	b	.L283
.L304:
	.align	2
.L303:
	.word	player
	.size	enemyAttackPlayer, .-enemyAttackPlayer
	.align	2
	.global	enemyAttack
	.type	enemyAttack, %function
enemyAttack:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	sub	sp, sp, #44
	mov	r4, r0
	bl	enemyAttackPlayer
	cmp	r0, #1
	mov	ip, r0
	beq	.L309
	cmn	r0, #1
	beq	.L310
	cmp	r0, #0
	bne	.L305
	ldr	lr, .L311
	add	r4, lr, #16
	ldmia	r4!, {r0, r1, r2, r3}
	mov	r5, sp
	stmia	r5!, {r0, r1, r2, r3}
	ldr	r7, [lr, #4]
	ldr	r6, [lr, #8]
	ldr	r4, [r4, #0]
	ldmia	lr, {r0, r1, r2, r3}
	str	ip, [sp, #28]
	mov	ip, #3
	str	ip, [sp, #32]
	str	r7, [sp, #20]
	str	r6, [sp, #24]
	ldr	ip, .L311+4
	str	r4, [r5, #0]
	mov	lr, pc
	bx	ip
.L305:
	add	sp, sp, #44
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L310:
	ldr	r3, .L311+8
	ldr	r3, [r3, #40]
	cmp	r3, #2
	bne	.L305
	ldr	ip, .L311+12
	add	lr, ip, #16
	ldmia	lr!, {r0, r1, r2, r3}
	mov	r4, sp
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r6, [ip, #4]
	ldr	r5, [ip, #8]
	ldmia	ip, {r0, r1, r2, r3}
	ldr	lr, [lr, #0]
	mov	ip, #0
	str	ip, [sp, #28]
	mov	ip, #5
	str	ip, [sp, #32]
	str	r6, [sp, #20]
	str	r5, [sp, #24]
	ldr	ip, .L311+4
	str	lr, [r4, #0]
	mov	lr, pc
	bx	ip
	b	.L305
.L309:
	ldr	ip, .L311+16
	add	r6, ip, #16
	ldmia	r6!, {r0, r1, r2, r3}
	mov	r5, sp
	stmia	r5!, {r0, r1, r2, r3}
	ldr	lr, .L311+8
	ldr	r3, [r4, #84]
	ldr	r7, [lr, #64]
	ldmib	ip, {r8, sl}	@ phole ldm
	ldr	r6, [r6, #0]
	rsb	r7, r3, r7
	ldmia	ip, {r0, r1, r2, r3}
	mov	ip, #6
	str	ip, [sp, #32]
	mov	r4, #0
	mov	ip, #30
	str	r8, [sp, #20]
	str	sl, [sp, #24]
	str	r4, [sp, #28]
	str	ip, [lr, #72]
	str	r4, [lr, #80]
	str	r7, [lr, #64]
	ldr	ip, .L311+4
	str	r6, [r5, #0]
	mov	lr, pc
	bx	ip
	b	.L305
.L312:
	.align	2
.L311:
	.word	swordMissSound
	.word	playSoundB
	.word	player
	.word	swordBlockSound
	.word	enemySwordHitSound
	.size	enemyAttack, .-enemyAttack
	.align	2
	.global	spawnNumEnemies
	.type	spawnNumEnemies, %function
spawnNumEnemies:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	cmp	r0, #0
	ldr	r7, [sp, #32]
	ble	.L313
	sub	r5, r7, r7, asl #2
	mov	r5, r5, asl #9
	ldr	r3, .L318
	add	r5, r5, #768
	mov	r4, #0
	mov	r9, #18
	mov	sl, #32
	mov	r8, #14
	mov	r6, #10
	mov	fp, #1
.L316:
	ldr	ip, [r3, #92]
	cmp	ip, #0
	bne	.L315
	str	r2, [r3, #24]
	str	r4, [r3, #60]
	str	r1, [r3, #20]
	str	r9, [r3, #8]
	str	sl, [r3, #12]
	str	ip, [r3, #36]
	str	ip, [r3, #40]
	str	ip, [r3, #44]
	str	r7, [r3, #48]
	str	ip, [r3, #52]
	str	r8, [r3, #16]
	str	r6, [r3, #72]
	str	r6, [r3, #64]
	str	fp, [r3, #92]
	str	ip, [r3, #28]
	str	ip, [r3, #32]
	str	ip, [r3, #56]
	str	ip, [r3, #80]
	str	ip, [r3, #84]
	sub	r0, r0, #1
.L315:
	add	r4, r4, #1
	cmp	r0, #0
	movle	ip, #0
	movgt	ip, #1
	cmp	r4, #9
	movgt	ip, #0
	cmp	ip, #0
	add	r3, r3, #100
	add	r2, r2, r5
	bne	.L316
.L313:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L319:
	.align	2
.L318:
	.word	enemies
	.size	spawnNumEnemies, .-spawnNumEnemies
	.align	2
	.global	spawnBoss
	.type	spawnBoss, %function
spawnBoss:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L321
	stmfd	sp!, {r4, r5}
	str	r1, [r3, #24]
	str	r2, [r3, #60]
	mov	r1, #18
	mov	r2, #14
	mov	ip, #0
	mov	r4, #1
	mov	r5, #10
	str	r1, [r3, #8]
	str	r2, [r3, #16]
	mov	r1, #32
	mov	r2, #4
	str	r0, [r3, #20]
	str	r1, [r3, #12]
	str	ip, [r3, #36]
	str	ip, [r3, #40]
	str	ip, [r3, #44]
	str	r4, [r3, #48]
	str	ip, [r3, #52]
	str	r5, [r3, #72]
	str	r2, [r3, #68]
	str	r5, [r3, #64]
	str	r4, [r3, #92]
	str	ip, [r3, #28]
	str	ip, [r3, #32]
	str	ip, [r3, #56]
	str	ip, [r3, #80]
	ldmfd	sp!, {r4, r5}
	bx	lr
.L322:
	.align	2
.L321:
	.word	boss
	.size	spawnBoss, .-spawnBoss
	.align	2
	.global	spawnEnemy
	.type	spawnEnemy, %function
spawnEnemy:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	str	r2, [r0, #24]
	mov	r2, #18
	str	r2, [r0, #8]
	mov	r2, #32
	str	r2, [r0, #12]
	str	r3, [r0, #60]
	ldr	r2, [sp, #4]
	mov	r3, #14
	mov	ip, #0
	mov	r4, #10
	str	r3, [r0, #16]
	mov	r3, #1
	str	r1, [r0, #20]
	str	ip, [r0, #36]
	str	ip, [r0, #40]
	str	ip, [r0, #44]
	str	r2, [r0, #48]
	str	ip, [r0, #52]
	str	r4, [r0, #72]
	str	r4, [r0, #64]
	str	r3, [r0, #92]
	str	ip, [r0, #28]
	str	ip, [r0, #32]
	str	ip, [r0, #56]
	str	ip, [r0, #80]
	str	ip, [r0, #84]
	ldmfd	sp!, {r4}
	bx	lr
	.size	spawnEnemy, .-spawnEnemy
	.align	2
	.global	enemyCheckAhead
	.type	enemyCheckAhead, %function
enemyCheckAhead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L338
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	ldr	r3, .L338+4
	ldr	r2, [r1, #24]
	mov	r4, r3
	ldr	r1, [r1, #8]
	mov	r6, r2, asr #4
	mov	ip, #0
	b	.L327
.L337:
	add	r5, ip, ip, asl #2
	add	r5, r5, r5, asl #2
	add	r5, r3, r5, asl #2
	cmp	r0, r5
	beq	.L334
	ldr	r7, [r0, #24]
	ldr	r5, [r4, #24]
	cmp	r7, r5
	ble	.L326
	cmp	r5, r2
	ble	.L334
	mov	r5, r5, asr #4
	rsb	sl, r1, r5
	ldr	r8, [r0, #16]
	add	sl, sl, #1
	rsb	sl, r6, sl
	cmp	sl, r8, asl #1
	bge	.L334
	rsb	r5, r5, r7, asr #4
	cmp	r5, r8, asl #2
	movle	r7, #0
	movgt	r7, #1
	and	r5, r7, #255
.L325:
	add	ip, ip, #1
	cmp	ip, #9
	movgt	r5, #0
	andle	r5, r5, #1
	cmp	r5, #0
	add	r4, r4, #100
	beq	.L336
.L327:
	ldr	r5, [r4, #92]
	cmp	r5, #0
	bne	.L337
.L334:
	mov	r5, #1
	add	ip, ip, #1
	mov	r7, r5
	cmp	ip, #9
	movgt	r5, #0
	andle	r5, r5, #1
	cmp	r5, #0
	add	r4, r4, #100
	bne	.L327
.L336:
	mov	r0, r7
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	bx	lr
.L326:
	bge	.L334
	cmp	r5, r2
	bge	.L334
	mov	r5, r5, asr #4
	ldr	sl, [r4, #8]
	ldr	r8, [r0, #16]
	rsb	r9, r5, r6
	rsb	sl, sl, r9
	cmp	sl, r8, asl #1
	bge	.L334
	sub	r5, r5, r7, asr #4
	cmp	r5, r8, asl #2
	movle	r7, #0
	movgt	r7, #1
	and	r5, r7, #255
	b	.L325
.L339:
	.align	2
.L338:
	.word	player
	.word	enemies
	.size	enemyCheckAhead, .-enemyCheckAhead
	.align	2
	.global	enemyDoAI
	.type	enemyDoAI, %function
enemyDoAI:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, [r0, #80]
	ldr	r2, [r0, #92]
	sub	r3, r3, #1
	cmp	r2, #0
	mov	r4, r0
	str	r3, [r0, #80]
	beq	.L340
	ldr	r2, [r0, #64]
	cmp	r2, #0
	ble	.L342
	cmp	r3, #0
	ble	.L343
.L361:
	ldr	r3, [r4, #40]
.L344:
	cmp	r3, #3
	beq	.L359
.L340:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L342:
	cmp	r3, #0
	bgt	.L340
	ldr	r3, [r0, #40]
	cmp	r3, #4
	beq	.L358
	mov	r3, #4
	str	r3, [r0, #40]
	mov	r3, #1
	str	r3, [r0, #96]
	mov	r3, #60
	str	r3, [r0, #80]
	b	.L340
.L343:
	ldr	r1, .L367
	ldr	r2, [r0, #24]
	ldr	r3, [r1, #24]
	cmp	r2, r3
	bgt	.L362
	bge	.L361
	ldr	ip, [r0, #16]
	ldr	r1, [r0, #8]
	sub	r2, r2, #3
	add	r2, r2, ip, asl #4
	sub	r1, r1, #1
	add	r2, r2, r1, asl #4
	mov	r5, #0
	cmp	r3, r2
	str	r5, [r0, #48]
	bge	.L363
	ldr	r3, [r0, #56]
	cmp	r3, #0
	beq	.L364
	mov	r3, #3
	str	r3, [r0, #40]
	mov	r3, #15
	str	r3, [r0, #80]
.L359:
	ldr	r3, [r4, #52]
	cmp	r3, #2
	bne	.L340
	ldr	r3, .L367+4
	ldr	r3, [r3, #48]
	ldr	r2, [r4, #36]
	sub	r3, r3, #3
	cmp	r2, r3
	bne	.L340
	mov	r0, r4
	bl	enemyAttack
	mov	r3, #0
	str	r3, [r4, #56]
	ldr	r3, .L367+8
	mov	lr, pc
	bx	r3
	mov	r3, #-369098752
	add	r3, r3, #958464
	add	r3, r3, #235
	smull	r2, r3, r0, r3
	mov	r2, r0, asr #31
	add	r3, r3, r0
	rsb	r3, r2, r3, asr #6
	add	r3, r3, r3, asl #2
	rsb	r3, r3, r3, asl #3
	sub	r3, r0, r3, asl #1
	add	r3, r3, #20
	str	r3, [r4, #80]
	b	.L340
.L358:
	ldr	r3, [r0, #96]
	cmp	r3, #0
	beq	.L340
	ldr	r3, .L367+12
	ldr	r2, [r3, #0]
	mov	r3, #0
	str	r3, [r0, #92]
	ldr	r3, .L367+4
	add	r3, r3, r2, asl #2
	ldr	r2, [r3, #80]
	sub	r2, r2, #1
	str	r2, [r3, #80]
	b	.L340
.L362:
	ldr	ip, [r0, #16]
	ldr	r1, [r1, #8]
	rsb	r2, ip, r2, asr #4
	sub	r1, r1, #1
	add	r2, r2, #3
	add	r3, r1, r3, asr #4
	mov	r5, #1
	cmp	r2, r3
	str	r5, [r0, #48]
	bge	.L365
	ldr	r3, [r0, #56]
	cmp	r3, #0
	beq	.L366
	mov	r3, #3
	str	r3, [r0, #40]
	mov	r3, #30
	str	r3, [r0, #80]
	b	.L359
.L366:
	ldr	r1, .L367+16
	mov	r2, r5
	bl	enemyCheckMoveDown
	subs	r6, r0, #0
	bne	.L361
	mov	r0, r4
	bl	enemyCheckAhead
	cmp	r0, #0
	beq	.L361
	ldr	r3, .L367+8
	str	r6, [r4, #40]
	str	r6, [r4, #32]
	str	r5, [r4, #56]
	mov	lr, pc
	bx	r3
	ldr	r2, .L367+20
	smull	r3, r2, r0, r2
	mov	r3, r0, asr #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #4
	rsb	r3, r3, r3, asl #4
	sub	r3, r0, r3, asl #1
	add	r3, r3, #5
	str	r3, [r4, #80]
	ldr	r3, [r4, #40]
	b	.L344
.L365:
	bl	enemyCheckAhead
	cmp	r0, #0
	beq	.L354
	mvn	r3, #23
	str	r3, [r4, #32]
	mov	r3, #0
	str	r5, [r4, #40]
	str	r3, [r4, #56]
	b	.L340
.L354:
	str	r0, [r4, #40]
	str	r0, [r4, #32]
	b	.L340
.L364:
	ldr	r1, .L367+16
	mov	r2, #1
	bl	enemyCheckMoveDown
	subs	r5, r0, #0
	bne	.L361
	mov	r0, r4
	bl	enemyCheckAhead
	cmp	r0, #0
	beq	.L361
	mov	r3, #1
	str	r3, [r4, #56]
	str	r5, [r4, #40]
	ldr	r3, .L367+8
	str	r5, [r4, #32]
	mov	lr, pc
	bx	r3
	mov	r1, #30
	ldr	r3, .L367+24
	mov	lr, pc
	bx	r3
	add	r1, r1, #5
	str	r1, [r4, #80]
	b	.L361
.L363:
	bl	enemyCheckAhead
	cmp	r0, #0
	beq	.L354
	mov	r3, #1
	str	r3, [r4, #40]
	mov	r3, #24
	str	r3, [r4, #32]
	str	r5, [r4, #56]
	b	.L340
.L368:
	.align	2
.L367:
	.word	player
	.word	.LANCHOR0
	.word	rand
	.word	.LANCHOR1
	.word	collisionmapBitmap
	.word	-2004318071
	.word	__aeabi_idivmod
	.size	enemyDoAI, .-enemyDoAI
	.align	2
	.global	bossDoAI
	.type	bossDoAI, %function
bossDoAI:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r4, .L391
	ldr	r3, [r4, #80]
	ldr	r2, [r4, #92]
	sub	r3, r3, #1
	cmp	r2, #0
	str	r3, [r4, #80]
	beq	.L369
	ldr	r2, [r4, #64]
	cmp	r2, #0
	ble	.L371
	cmp	r3, #0
	ble	.L372
.L387:
	ldr	r3, [r4, #40]
.L373:
	cmp	r3, #3
	beq	.L385
.L369:
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L371:
	ldr	r2, [r4, #68]
	cmp	r2, #0
	ble	.L383
	ldr	r3, [r4, #72]
	sub	r2, r2, #1
	str	r3, [r4, #64]
	mov	r3, #30
	str	r2, [r4, #68]
	str	r3, [r4, #80]
	b	.L369
.L375:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L388
	mov	r3, #3
	str	r3, [r4, #40]
	mov	r3, #30
	str	r3, [r4, #80]
.L385:
	ldr	r3, [r4, #52]
	cmp	r3, #2
	ldr	r4, .L391
	bne	.L369
	ldr	r3, .L391+4
	ldr	r3, [r3, #48]
	ldr	r2, [r4, #36]
	sub	r3, r3, #3
	cmp	r2, r3
	bne	.L369
	mov	r0, r4
	bl	enemyAttack
	mov	r3, #0
	str	r3, [r4, #56]
	ldr	r3, .L391+8
	mov	lr, pc
	bx	r3
	mov	r3, #-369098752
	add	r3, r3, #958464
	add	r3, r3, #235
	smull	r2, r3, r0, r3
	mov	r2, r0, asr #31
	add	r3, r3, r0
	rsb	r3, r2, r3, asr #6
	add	r3, r3, r3, asl #2
	rsb	r3, r3, r3, asl #3
	sub	r3, r0, r3, asl #1
	add	r3, r3, #20
	str	r3, [r4, #80]
	b	.L369
.L372:
	ldr	r1, .L391+12
	ldr	r2, [r4, #24]
	ldr	r3, [r1, #24]
	cmp	r2, r3
	bgt	.L389
	bge	.L387
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #8]
	sub	r2, r2, #3
	add	r2, r2, r0, asl #4
	sub	r1, r1, #1
	add	r1, r2, r1, asl #4
	cmp	r3, r1
	mov	r2, #0
	str	r2, [r4, #48]
	blt	.L380
	mov	r3, #1
	str	r3, [r4, #40]
	mov	r3, #24
	str	r3, [r4, #32]
	str	r2, [r4, #56]
	b	.L369
.L383:
	cmp	r3, #0
	bgt	.L369
	ldr	r3, [r4, #40]
	cmp	r3, #4
	beq	.L384
	mov	r3, #4
	str	r3, [r4, #40]
	mov	r3, #1
	str	r3, [r4, #96]
	mov	r3, #60
	str	r3, [r4, #80]
	b	.L369
.L384:
	ldr	r3, [r4, #96]
	cmp	r3, #0
	beq	.L369
	ldr	r3, .L391+16
	ldr	r2, [r3, #0]
	ldr	r3, .L391+4
	add	r3, r3, r2, asl #2
	ldr	r2, [r3, #80]
	mov	r1, #0
	sub	r2, r2, #1
	str	r1, [r4, #92]
	str	r2, [r3, #80]
	b	.L369
.L389:
	ldr	r0, [r4, #16]
	ldr	r1, [r1, #8]
	rsb	r2, r0, r2, asr #4
	sub	r1, r1, #1
	add	r2, r2, #3
	add	r3, r1, r3, asr #4
	mov	r5, #1
	cmp	r2, r3
	str	r5, [r4, #48]
	blt	.L375
	mvn	r3, #31
	str	r3, [r4, #32]
	mov	r3, #0
	str	r5, [r4, #40]
	str	r3, [r4, #56]
	b	.L369
.L380:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L390
	mov	r3, #3
	str	r3, [r4, #40]
	mov	r3, #15
	str	r3, [r4, #80]
	b	.L385
.L388:
	mov	r0, r4
	ldr	r1, .L391+20
	mov	r2, r5
	bl	enemyCheckMoveDown
	cmp	r0, #0
	bne	.L387
	ldr	r3, .L391+8
	str	r0, [r4, #40]
	str	r0, [r4, #32]
	str	r5, [r4, #56]
	mov	lr, pc
	bx	r3
	ldr	r2, .L391+24
	smull	r3, r2, r0, r2
	mov	r3, r0, asr #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #4
	rsb	r3, r3, r3, asl #4
	sub	r3, r0, r3, asl #1
	add	r3, r3, #5
	str	r3, [r4, #80]
	ldr	r3, [r4, #40]
	b	.L373
.L390:
	mov	r0, r4
	ldr	r1, .L391+20
	mov	r2, #1
	bl	enemyCheckMoveDown
	cmp	r0, #0
	bne	.L387
	mov	r3, #1
	str	r3, [r4, #56]
	str	r0, [r4, #40]
	ldr	r3, .L391+8
	str	r0, [r4, #32]
	mov	lr, pc
	bx	r3
	ldr	r2, .L391+24
	smull	r3, r2, r0, r2
	mov	r3, r0, asr #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #4
	rsb	r3, r3, r3, asl #4
	sub	r3, r0, r3, asl #1
	add	r3, r3, #5
	str	r3, [r4, #80]
	b	.L387
.L392:
	.align	2
.L391:
	.word	boss
	.word	.LANCHOR0
	.word	rand
	.word	player
	.word	.LANCHOR1
	.word	collisionmapBitmap
	.word	-2004318071
	.size	bossDoAI, .-bossDoAI
	.align	2
	.global	enemyMove
	.type	enemyMove, %function
enemyMove:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, [r0, #28]
	cmp	r3, #0
	mov	r4, r0
	blt	.L404
	bl	enemyMoveDownLimit
.L395:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	ble	.L396
	mov	r0, r4
	bl	enemyMoveRightLimit
.L397:
	mov	r0, r4
	bl	enemyFall
	ldr	r5, [r4, #32]
	cmp	r5, #0
	ble	.L398
	mov	r0, r4
	ldr	r1, .L406
	mov	r2, #1
	bl	enemyCheckMoveDown
	cmp	r0, #0
	beq	.L405
.L399:
	ldr	r3, [r4, #20]
	mov	r3, r3, asr #4
	cmp	r3, #256
	movhi	r3, #3328
	strhi	r3, [r4, #20]
	ldr	r3, [r4, #24]
	mov	r2, r3, asr #4
	cmp	r2, #1536
	ldr	r2, .L406+4
	movhi	r3, #7616
	ldr	r1, [r4, #8]
	addhi	r3, r3, #32
	ldr	r2, [r2, #0]
	add	r1, r3, r1
	strhi	r3, [r4, #24]
	cmp	r2, r1, asr #4
	movgt	r3, #0
	bgt	.L402
	ldr	r2, .L406+8
	ldr	r2, [r2, #0]
	cmp	r2, r3, asr #4
	movle	r3, #0
	movgt	r3, #1
.L402:
	str	r3, [r4, #88]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L405:
	ldr	r3, [r4, #80]
	cmp	r3, #0
	subgt	r5, r5, #1
	strgt	r5, [r4, #32]
	b	.L399
.L396:
	beq	.L397
	mov	r0, r4
	bl	enemyMoveLeftLimit
	b	.L397
.L404:
	bl	enemyMoveUpLimit
	b	.L395
.L398:
	beq	.L399
	mov	r0, r4
	ldr	r1, .L406
	mov	r2, #1
	bl	enemyCheckMoveDown
	cmp	r0, #0
	bne	.L399
	ldr	r3, [r4, #80]
	cmp	r3, #0
	addgt	r5, r5, #1
	strgt	r5, [r4, #32]
	b	.L399
.L407:
	.align	2
.L406:
	.word	collisionmapBitmap
	.word	stageMinColLimit
	.word	stageColLimit
	.size	enemyMove, .-enemyMove
	.align	2
	.global	enemiesDoAI
	.type	enemiesDoAI, %function
enemiesDoAI:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	ldr	r7, .L415
	ldr	r6, .L415+4
	mov	r5, r7
	mov	r4, #0
	b	.L411
.L409:
	ldr	r3, [r6, #92]
	cmp	r3, #0
	add	r4, r4, #1
	bne	.L413
.L410:
	cmp	r4, #10
	add	r5, r5, #100
	beq	.L414
.L411:
	ldr	r3, [r5, #92]
	cmp	r3, #0
	beq	.L409
	add	r0, r4, r4, asl #2
	add	r0, r0, r0, asl #2
	add	r0, r7, r0, asl #2
	bl	enemyDoAI
	ldr	r3, [r6, #92]
	cmp	r3, #0
	add	r4, r4, #1
	beq	.L410
.L413:
	bl	bossDoAI
	cmp	r4, #10
	add	r5, r5, #100
	bne	.L411
.L414:
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bx	lr
.L416:
	.align	2
.L415:
	.word	enemies
	.word	boss
	.size	enemiesDoAI, .-enemiesDoAI
	.align	2
	.global	enemiesMove
	.type	enemiesMove, %function
enemiesMove:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r6, .L422
	mov	r4, #0
	mov	r5, r6
	b	.L419
.L418:
	add	r4, r4, #1
	cmp	r4, #10
	add	r5, r5, #100
	beq	.L421
.L419:
	ldr	r3, [r5, #92]
	cmp	r3, #0
	beq	.L418
	add	r0, r4, r4, asl #2
	add	r0, r0, r0, asl #2
	add	r0, r6, r0, asl #2
	add	r4, r4, #1
	bl	enemyMove
	cmp	r4, #10
	add	r5, r5, #100
	bne	.L419
.L421:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L423:
	.align	2
.L422:
	.word	enemies
	.size	enemiesMove, .-enemiesMove
	.align	2
	.global	animatePlayer
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r2, #83886080
	ldr	r4, .L441
	mov	r0, #3
	ldr	r1, .L441+4
	add	r2, r2, #512
	mov	r3, #256
	ldr	ip, .L441+8
	mov	lr, pc
	bx	ip
	ldr	r5, [r4, #40]
	cmp	r5, #4
	ldrls	pc, [pc, r5, asl #2]
	b	.L425
.L431:
	.word	.L426
	.word	.L427
	.word	.L428
	.word	.L429
	.word	.L430
.L427:
	ldr	r3, .L441+12
	ldr	r6, [r4, #52]
	ldr	r0, [r4, #36]
	ldr	r1, [r3, r6, asl #2]
	ldr	r3, .L441+16
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldr	r3, .L441
	bne	.L425
	cmp	r6, #8
	str	r1, [r3, #36]
	strgt	r1, [r3, #40]
	movgt	r5, r1
	bgt	.L425
	cmp	r6, #4
	beq	.L440
	cmp	r6, #0
	streq	r6, [r3, #56]
.L435:
	add	r6, r6, #1
	str	r6, [r4, #52]
	ldr	r5, [r4, #40]
.L425:
	ldr	r3, [r4, #44]
	cmp	r3, r5
	ldr	r3, .L441
	movne	r2, #0
	strne	r2, [r3, #36]
	strne	r2, [r3, #52]
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	str	r5, [r4, #44]
	str	r3, [r4, #36]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L430:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	mov	r3, #0
	str	r3, [r4, #36]
	mov	r3, #2
	str	r3, [r4, #52]
	ldrlt	r3, .L441
	movlt	r2, #1
	strlt	r2, [r3, #52]
	b	.L425
.L426:
	mov	r2, #-1241513984
	ldr	r3, [r4, #36]
	add	r2, r2, #745472
	add	r2, r2, #183
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	add	r2, r2, r3
	rsb	r2, r1, r2, asr #5
	add	r2, r2, r2, asl #1
	rsb	r2, r2, r2, asl #4
	subs	r3, r3, r2
	ldr	r1, .L441
	bne	.L425
	ldr	r2, [r1, #52]
	cmp	r2, #0
	str	r3, [r1, #36]
	ble	.L437
.L439:
	str	r3, [r1, #52]
	b	.L425
.L428:
	ldr	r3, [r4, #36]
	ands	r3, r3, #1
	ldr	r2, .L441
	bne	.L425
	ldr	r1, [r2, #52]
	cmp	r1, #2
	str	r3, [r2, #36]
	addle	r1, r1, #1
	movgt	r3, #3
	strle	r1, [r2, #52]
	strgt	r3, [r2, #52]
	b	.L425
.L429:
	ldr	r3, [r4, #36]
	ldr	r2, .L441+20
	smull	r1, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, asl #1
	subs	r3, r3, r2, asl #1
	ldr	r1, .L441
	bne	.L425
	ldr	r2, [r1, #52]
	cmp	r2, #4
	str	r3, [r1, #36]
	bgt	.L439
.L437:
	add	r2, r2, #1
	str	r2, [r1, #52]
	b	.L425
.L440:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	moveq	r2, #9
	streq	r2, [r3, #52]
	beq	.L425
	b	.L435
.L442:
	.align	2
.L441:
	.word	player
	.word	playerSpritesPal
	.word	DMANow
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.word	715827883
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	demoAnimatePlayer
	.type	demoAnimatePlayer, %function
demoAnimatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L461
	ldr	r3, [r4, #76]
	cmp	r3, #0
	subgt	r3, r3, #1
	mov	r2, #83886080
	strgt	r3, [r4, #76]
	mov	r0, #3
	ldr	r1, .L461+4
	add	r2, r2, #512
	mov	r3, #256
	ldr	ip, .L461+8
	mov	lr, pc
	bx	ip
	ldr	r5, [r4, #40]
	cmp	r5, #4
	ldrls	pc, [pc, r5, asl #2]
	b	.L445
.L451:
	.word	.L446
	.word	.L447
	.word	.L448
	.word	.L449
	.word	.L450
.L447:
	ldr	r3, .L461+12
	ldr	r6, [r4, #52]
	ldr	r0, [r4, #36]
	ldr	r1, [r3, r6, asl #2]
	ldr	r3, .L461+16
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldr	r3, .L461
	bne	.L445
	cmp	r6, #8
	str	r1, [r3, #36]
	strgt	r1, [r3, #40]
	movgt	r5, r1
	bgt	.L445
	cmp	r6, #4
	beq	.L460
	cmp	r6, #0
	streq	r6, [r3, #56]
.L455:
	add	r6, r6, #1
	str	r6, [r4, #52]
	ldr	r5, [r4, #40]
.L445:
	ldr	r3, [r4, #44]
	cmp	r3, r5
	ldr	r3, .L461
	movne	r2, #0
	strne	r2, [r3, #36]
	strne	r2, [r3, #52]
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	str	r5, [r4, #44]
	str	r3, [r4, #36]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L450:
	ldr	r3, [r4, #76]
	cmp	r3, #14
	mov	r3, #0
	str	r3, [r4, #36]
	mov	r3, #2
	str	r3, [r4, #52]
	ldrgt	r3, .L461
	movgt	r2, #1
	strgt	r2, [r3, #52]
	b	.L445
.L446:
	mov	r2, #-1241513984
	ldr	r3, [r4, #36]
	add	r2, r2, #745472
	add	r2, r2, #183
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	add	r2, r2, r3
	rsb	r2, r1, r2, asr #5
	add	r2, r2, r2, asl #1
	rsb	r2, r2, r2, asl #4
	subs	r3, r3, r2
	ldr	r1, .L461
	bne	.L445
	ldr	r2, [r1, #52]
	cmp	r2, #0
	str	r3, [r1, #36]
	ble	.L457
.L459:
	str	r3, [r1, #52]
	b	.L445
.L448:
	ldr	r3, [r4, #36]
	ands	r3, r3, #1
	ldr	r2, .L461
	bne	.L445
	ldr	r1, [r2, #52]
	cmp	r1, #2
	str	r3, [r2, #36]
	addle	r1, r1, #1
	movgt	r3, #3
	strle	r1, [r2, #52]
	strgt	r3, [r2, #52]
	b	.L445
.L449:
	ldr	r3, [r4, #36]
	ldr	r2, .L461+20
	smull	r1, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, asl #1
	subs	r3, r3, r2, asl #1
	ldr	r1, .L461
	bne	.L445
	ldr	r2, [r1, #52]
	cmp	r2, #4
	str	r3, [r1, #36]
	bgt	.L459
.L457:
	add	r2, r2, #1
	str	r2, [r1, #52]
	b	.L445
.L460:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	moveq	r2, #9
	streq	r2, [r3, #52]
	beq	.L445
	b	.L455
.L462:
	.align	2
.L461:
	.word	player
	.word	playerSpritesPal
	.word	DMANow
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.word	715827883
	.size	demoAnimatePlayer, .-demoAnimatePlayer
	.align	2
	.global	animateEnemy
	.type	animateEnemy, %function
animateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, [r0, #40]
	mov	r4, r0
	cmp	r5, #4
	ldrls	pc, [pc, r5, asl #2]
	b	.L464
.L470:
	.word	.L465
	.word	.L466
	.word	.L467
	.word	.L468
	.word	.L469
.L469:
	ldr	r3, [r0, #36]
	ands	r3, r3, #7
	bne	.L464
	ldr	r2, [r0, #52]
	cmp	r2, #2
	str	r3, [r0, #36]
	bgt	.L464
.L477:
	add	r2, r2, #1
	str	r2, [r4, #52]
.L464:
	ldr	r3, [r4, #44]
	cmp	r3, r5
	movne	r3, #0
	strne	r3, [r4, #36]
	strne	r3, [r4, #52]
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	str	r5, [r4, #44]
	str	r3, [r4, #36]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L465:
	mov	r2, #-1241513984
	ldr	r3, [r0, #36]
	add	r2, r2, #745472
	add	r2, r2, #183
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	add	r2, r2, r3
	rsb	r2, r1, r2, asr #5
	add	r2, r2, r2, asl #1
	rsb	r2, r2, r2, asl #4
	subs	r3, r3, r2
	bne	.L464
	ldr	r2, [r0, #52]
	cmp	r2, #0
	str	r3, [r0, #36]
	blt	.L477
	str	r3, [r4, #52]
	b	.L464
.L467:
	mov	r2, #-1241513984
	ldr	r3, [r0, #36]
	add	r2, r2, #745472
	add	r2, r2, #183
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	add	r2, r2, r3
	rsb	r2, r1, r2, asr #6
	add	r2, r2, r2, asl #1
	rsb	r2, r2, r2, asl #4
	subs	r3, r3, r2, asl #1
	streq	r3, [r0, #36]
	b	.L464
.L466:
	ldr	r3, [r0, #36]
	ldr	r2, .L479
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #2
	add	r2, r2, r2, asl #2
	subs	r3, r3, r2, asl #1
	bne	.L464
	ldr	r2, [r0, #52]
	cmp	r2, #2
	str	r3, [r0, #36]
	ble	.L477
	str	r3, [r4, #52]
	b	.L464
.L468:
	ldr	r6, [r0, #52]
	ldr	r3, .L479+4
	add	r3, r3, r6, asl #2
	ldr	r1, [r3, #40]
	ldr	r0, [r0, #36]
	ldr	r3, .L479+8
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L464
	cmp	r6, #3
	streq	r1, [r4, #36]
	beq	.L474
	cmp	r6, #1
	addle	r6, r6, #1
	str	r1, [r4, #36]
	strle	r6, [r4, #52]
	ble	.L464
.L474:
	mov	r5, #0
	str	r5, [r4, #40]
	b	.L464
.L480:
	.align	2
.L479:
	.word	1717986919
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.size	animateEnemy, .-animateEnemy
	.align	2
	.global	animateEnemies
	.type	animateEnemies, %function
animateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L484
	mov	r4, #0
.L482:
	add	r0, r4, r4, asl #2
	add	r0, r0, r0, asl #2
	add	r0, r5, r0, asl #2
	add	r4, r4, #1
	bl	animateEnemy
	cmp	r4, #10
	bne	.L482
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L485:
	.align	2
.L484:
	.word	enemies
	.size	animateEnemies, .-animateEnemies
	.align	2
	.global	resetEnemies
	.type	resetEnemies, %function
resetEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L489
	mov	r2, #0
	add	r1, r3, #1000
.L487:
	str	r2, [r3, #92]
	str	r2, [r3, #88]
	str	r2, [r3, #84]
	add	r3, r3, #100
	cmp	r3, r1
	bne	.L487
	ldr	r1, .L489+4
	ldr	r3, .L489+8
	str	r2, [r1, #0]
	mov	r2, #4
	str	r2, [r3, #80]
	mov	r2, #9
	str	r2, [r3, #84]
	mov	r2, #12
	str	r2, [r3, #88]
	mov	r2, #19
	str	r2, [r3, #92]
	mov	r2, #1
	str	r2, [r3, #96]
	bx	lr
.L490:
	.align	2
.L489:
	.word	enemies
	.word	.LANCHOR1
	.word	.LANCHOR0
	.size	resetEnemies, .-resetEnemies
	.align	2
	.global	gameDirector
	.type	gameDirector, %function
gameDirector:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	ldr	r2, .L525
	sub	sp, sp, #12
	ldr	r3, [r2, #0]
	ldr	r4, .L525+4
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r2, #0]
	ldr	r3, [r4, #4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #4]
	ldr	r1, .L525+8
	ldr	r3, [r4, #0]
	add	r0, r1, r3, asl #2
	ldr	r0, [r0, #80]
	cmp	r0, #0
	ldr	r0, .L525+4
	ble	.L515
.L494:
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L491
.L500:
	.word	.L496
	.word	.L497
	.word	.L498
	.word	.L499
.L499:
	ldr	r3, .L525+12
	ldr	r3, [r3, #0]
	cmp	r3, #784
	blt	.L506
	ldr	r3, [r4, #8]
	cmp	r3, #7
	ldr	r5, .L525+4
	beq	.L516
	ldr	r2, [r1, #92]
	cmp	r2, #18
	ble	.L517
.L506:
	ldr	ip, [r4, #4]
	cmp	ip, #0
	ldr	r4, .L525+4
	bne	.L491
	ldr	r3, [r1, #92]
	cmp	r3, #17
	ldr	r1, .L525+8
	bgt	.L491
	ldr	r2, [r4, #8]
	cmp	r2, #9
	beq	.L518
	cmp	r3, #9
	bgt	.L491
	cmp	r2, #10
	beq	.L519
	cmp	r3, #7
	bgt	.L491
	cmp	r2, #11
	beq	.L520
	cmp	r3, #1
	bgt	.L491
	cmp	r2, #12
	bne	.L491
	ldr	r3, .L525+16
	ldr	r2, [r3, #60]
	mov	r0, #2048
	mov	r1, #16384
	add	r2, r2, #1
	bl	spawnBoss
	ldr	r3, [r4, #8]
	add	r3, r3, #1
	str	r3, [r4, #8]
.L491:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L498:
	ldr	r3, .L525+12
	ldr	r3, [r3, #0]
	cmp	r3, #528
	bge	.L521
.L503:
	ldr	ip, [r4, #4]
	cmp	ip, #0
	ldr	r4, .L525+4
	bne	.L491
	ldr	r3, [r4, #8]
	cmp	r3, #5
	ldreq	r0, [r1, #120]
	beq	.L514
	ldr	r2, [r1, #88]
	cmp	r2, #6
	bgt	.L491
	cmp	r3, #6
	bne	.L491
	ldr	r3, .L525+8
	ldr	r0, [r3, #124]
.L514:
	ldr	r3, .L525+16
	ldr	r3, [r3, #60]
	mov	r1, #2048
	add	r3, r3, #1
	mov	r2, r1
	str	ip, [sp, #0]
	bl	spawnNumEnemies
	ldr	r3, [r4, #8]
	add	r3, r3, #1
	str	r3, [r4, #8]
	mov	r3, #180
	str	r3, [r4, #4]
	b	.L491
.L497:
	ldr	r3, .L525+12
	ldr	r3, [r3, #0]
	cmp	r3, #272
	bge	.L522
.L502:
	ldr	r3, [r1, #84]
	cmp	r3, #5
	bgt	.L491
	ldr	r3, [r4, #8]
	cmp	r3, #2
	ldr	r4, .L525+4
	bne	.L491
	ldr	r3, .L525+8
	ldr	r0, [r3, #108]
	ldr	r3, .L525+16
	ldr	r3, [r3, #60]
	mov	r1, #2048
	mov	r2, #8192
	add	r3, r3, #1
	mov	ip, #1
.L512:
	str	ip, [sp, #0]
	bl	spawnNumEnemies
	ldr	r3, [r4, #8]
	add	r3, r3, #1
	str	r3, [r4, #8]
	b	.L491
.L496:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L523
.L501:
	mov	r3, #1
	str	r3, [r4, #8]
	b	.L491
.L515:
	ldr	ip, .L525+20
	ldr	r5, [ip, #0]
	add	r5, r5, #256
	add	r3, r3, #1
	str	r5, [ip, #0]
	mov	ip, #0
	stmia	r0, {r3, ip}	@ phole stm
	mov	r0, #200
	str	r0, [r2, #0]
	b	.L494
.L521:
	ldr	r3, [r4, #8]
	cmp	r3, #3
	ldr	r5, .L525+4
	beq	.L524
	cmp	r3, #4
	bne	.L503
	ldr	r3, .L525+16
	ldr	r0, [r1, #116]
	mov	r1, #2048
	ldr	r3, [r3, #60]
	mov	r2, r1
	b	.L513
.L522:
	ldr	ip, [r4, #8]
	cmp	ip, #1
	ldr	r5, .L525+4
	bne	.L502
	ldr	r3, .L525+16
	ldr	r3, [r3, #60]
	ldr	r0, [r1, #104]
	mov	r1, #2048
	mov	r2, r1
	add	r3, r3, #1
.L511:
	str	ip, [sp, #0]
	bl	spawnNumEnemies
	ldr	r3, [r5, #8]
	add	r3, r3, #1
	str	r3, [r5, #8]
	b	.L491
.L523:
	ldr	r3, .L525+16
	ldr	r3, [r3, #60]
	mov	ip, #1
	mov	r0, #4
	mov	r1, #2048
	mov	r2, #4096
	add	r3, r3, #1
	str	ip, [sp, #0]
	bl	spawnNumEnemies
	b	.L501
.L517:
	cmp	r3, #8
	bne	.L506
	ldr	r3, .L525+8
	ldr	r0, [r3, #132]
	ldr	r3, .L525+16
	ldr	r3, [r3, #60]
	mov	r1, #2048
	mov	r2, #16384
.L513:
	add	r3, r3, #1
	mov	ip, #0
	str	ip, [sp, #0]
	bl	spawnNumEnemies
	ldr	r3, [r5, #8]
	add	r3, r3, #1
	str	r3, [r5, #8]
	mov	r3, #300
	str	r3, [r5, #4]
	b	.L491
.L524:
	ldr	r3, .L525+16
	ldr	r3, [r3, #60]
	ldr	r0, [r1, #112]
	mov	r2, #12288
	mov	r1, #2048
	add	r3, r3, #1
	mov	ip, #0
	b	.L511
.L516:
	ldr	r3, .L525+16
	ldr	r3, [r3, #60]
	ldr	r0, [r1, #128]
	mov	r2, #16384
	mov	r1, #2048
	add	r3, r3, #1
	mov	ip, #0
	b	.L511
.L518:
	ldr	r3, .L525+16
	ldr	r3, [r3, #60]
	ldr	r0, [r1, #136]
	add	r3, r3, #1
	mov	r1, #2048
	mov	r2, #16384
	str	ip, [sp, #0]
	bl	spawnNumEnemies
	ldr	r3, [r4, #8]
	add	r3, r3, #1
	str	r3, [r4, #8]
	mov	r3, #300
	str	r3, [r4, #4]
	b	.L491
.L519:
	ldr	r3, .L525+16
	ldr	r3, [r3, #60]
	ldr	r0, [r1, #140]
	mov	r2, #12288
	mov	r1, #2048
	add	r3, r3, #1
	mov	ip, #1
	b	.L512
.L520:
	ldr	r3, .L525+16
	ldr	r3, [r3, #60]
	ldr	r0, [r1, #144]
	mov	r2, #16384
	mov	r1, #2048
	add	r3, r3, #1
	b	.L512
.L526:
	.align	2
.L525:
	.word	advanceTimer
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	hOff
	.word	player
	.word	stageColLimit
	.size	gameDirector, .-gameDirector
	.global	attackPattern
	.global	eAttackPattern
	.global	spawnEventList
	.global	spawnEventNum
	.global	gameDirectorTimer
	.global	phase
	.global	enemiesLeft
	.comm	sbbHeight,4,4
	.comm	sbbWidth,4,4
	.comm	player,108,4
	.comm	boss,100,4
	.comm	comboCount,24,4
	.comm	soundA,36,4
	.comm	soundB,36,4
	.comm	swordSound,36,4
	.comm	healSound,36,4
	.comm	swordMissSound,36,4
	.comm	swordBlockSound,36,4
	.comm	enemySwordHitSound,36,4
	.comm	enemies,1000,4
	.comm	BG3hOff,4,4
	.comm	stageColLimit,4,4
	.comm	advanceTimer,4,4
	.comm	stageMinColLimit,4,4
	.comm	stageComplete,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	attackPattern, %object
	.size	attackPattern, 40
attackPattern:
	.word	9
	.word	2
	.word	2
	.word	2
	.word	9
	.word	2
	.word	2
	.word	2
	.word	9
	.word	6
	.type	eAttackPattern, %object
	.size	eAttackPattern, 40
eAttackPattern:
	.word	12
	.word	6
	.word	8
	.space	28
	.type	enemiesLeft, %object
	.size	enemiesLeft, 20
enemiesLeft:
	.word	4
	.word	9
	.word	12
	.word	19
	.word	1
	.type	spawnEventList, %object
	.size	spawnEventList, 48
spawnEventList:
	.word	4
	.word	5
	.word	4
	.word	4
	.word	3
	.word	2
	.word	3
	.word	3
	.word	5
	.word	4
	.word	3
	.word	3
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	phase, %object
	.size	phase, 4
phase:
	.space	4
	.type	gameDirectorTimer, %object
	.size	gameDirectorTimer, 4
gameDirectorTimer:
	.space	4
	.type	spawnEventNum, %object
	.size	spawnEventNum, 4
spawnEventNum:
	.space	4
	.ident	"GCC: (devkitARM release 31) 4.5.0"
