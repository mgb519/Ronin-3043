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
	ldr	r3, [r0, #88]
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
	add	ip, r3, #960
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
	add	r3, r3, #96
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
	ldr	r0, [r0, #80]
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
	ldr	r0, [r0, #80]
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
	strge	r3, [r5, #80]
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
	strge	r3, [r5, #80]
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
	ldr	r4, .L235
	sub	sp, sp, #20
	ldr	r3, [r4, #100]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #100]
	ldr	r3, [r4, #40]
	cmp	r3, #1
	ldr	r2, .L235
	beq	.L231
.L207:
	add	sp, sp, #20
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L231:
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
	ldr	r2, .L235+4
	ldr	r7, .L235+8
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
	ldr	r9, .L235+12
	mov	lr, pc
	bx	r9
	ldr	r3, .L235+16
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
	ldr	r3, .L235+20
	mov	r1, #2608
	mov	r2, #11008
	ldr	r0, .L235+24
	add	r1, r1, #10
	add	r2, r2, #17
	stmia	r3, {r0, r1, r2}	@ phole stm
.L213:
	ldr	r8, .L235+28
	mov	r5, #0
	ldr	fp, .L235+32
	mov	r6, r8
	mov	sl, r5
	b	.L221
.L217:
	add	r5, r5, #1
	cmp	r5, #10
	add	r6, r6, #96
	beq	.L232
.L221:
	ldr	r3, [r6, #88]
	cmp	r3, #0
	beq	.L217
	add	r3, r5, r5, asl #1
	add	r3, r8, r3, asl #5
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
	str	r3, [r6, #76]
	bl	enemyMoveDownLimit
	ldr	sl, [r4, #48]
	mvn	r2, #11
	cmp	sl, #0
	str	r2, [r6, #28]
	beq	.L233
	ldr	r0, [sp, #12]
	ldr	r1, .L235+36
	mov	r2, #4
	bl	enemyCheckMoveLeft
	cmp	r0, #0
	beq	.L220
.L219:
	mov	lr, pc
	bx	r9
	ldr	r1, [r6, #76]
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
	ble	.L234
.L228:
	mov	sl, #1
	b	.L217
.L232:
	ldr	r2, [r4, #80]
	ldr	r1, [r4, #84]
	add	r3, sl, r2
	mul	r3, sl, r3
	add	r2, r2, #60
	mla	sl, r2, sl, r1
	cmp	r3, #0
	str	sl, [r4, #84]
	str	r3, [r4, #80]
	bne	.L222
	ldr	r2, .L235+40
	mov	ip, #2
	ldmia	r2, {r0, r1, r2}	@ phole ldm
	str	ip, [sp, #0]
	ldr	ip, .L235+44
	mov	lr, pc
	bx	ip
.L223:
	ldr	r3, [r4, #80]
	cmp	r3, #99
	ldr	r3, .L235
	movgt	r2, #99
	strgt	r2, [r3, #80]
	ldr	r5, [r3, #52]
.L212:
	cmp	r5, #9
	bne	.L207
	ldr	r3, [r4, #100]
	cmp	r3, #0
	ldrle	r3, .L235
	movle	r2, #8
	strle	r2, [r3, #100]
	b	.L207
.L234:
	ldr	ip, [r4, #64]
	cmp	ip, #4
	bgt	.L228
	ldr	lr, .L235
	ldr	r3, [lr, #92]
	cmp	r3, #0
	beq	.L228
	ldr	r2, .L235+48
	add	ip, ip, #1
	str	ip, [lr, #64]
	mov	ip, #8
	ldmia	r2, {r0, r1}	@ phole ldm
	mov	r3, #0
	ldr	r2, [r2, #8]
	str	ip, [sp, #0]
	ldr	ip, .L235+44
	mov	sl, #1
	mov	lr, pc
	bx	ip
	b	.L217
.L215:
	ldr	r3, .L235+20
	mov	r1, #2736
	mov	r2, #11008
	ldr	r0, .L235+52
	add	r1, r1, #13
	add	r2, r2, #17
	stmia	r3, {r0, r1, r2}	@ phole stm
	b	.L213
.L233:
	ldr	r0, [sp, #12]
	ldr	r1, .L235+36
	mov	r2, #4
	bl	enemyCheckMoveRight
	cmp	r0, #0
	bne	.L219
	b	.L220
.L222:
	ldr	r3, .L235+20
	mov	ip, #4
	ldmia	r3, {r0, r1, r2}	@ phole ldm
	str	ip, [sp, #0]
	mov	r3, #0
	ldr	ip, .L235+44
	mov	lr, pc
	bx	ip
	b	.L223
.L216:
	ldr	r3, .L235+20
	mov	r1, #2064
	mov	r2, #11008
	ldr	r0, .L235+56
	add	r1, r1, #4
	add	r2, r2, #17
	stmia	r3, {r0, r1, r2}	@ phole stm
	b	.L213
.L236:
	.align	2
.L235:
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
	ldr	r1, .L239
	mov	r2, #1
	mov	r4, r0
	bl	enemyCheckMoveDown
	cmp	r0, #0
	ldrne	r3, [r4, #28]
	addne	r3, r3, #3
	strne	r3, [r4, #28]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L240:
	.align	2
.L239:
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
	beq	.L242
	ldr	r1, .L252
	mvn	r2, #0
	bl	enemyCheckMoveLeft
	cmp	r0, #0
	beq	.L243
	ldr	r0, [r4, #40]
	cmp	r0, #0
	cmpne	r0, #3
	moveq	r0, #1
	beq	.L243
.L251:
	cmp	r0, #4
	movne	r0, #0
	moveq	r0, #1
.L243:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L242:
	ldr	r1, .L252
	mov	r2, #1
	bl	enemyCheckMoveRight
	cmp	r0, #0
	beq	.L243
	ldr	r0, [r4, #40]
	cmp	r0, #0
	cmpne	r0, #3
	moveq	r0, #1
	bne	.L251
	b	.L243
.L253:
	.align	2
.L252:
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
	beq	.L255
	ldr	r1, .L260
	mov	r2, #1
	bl	enemyCheckMoveLeft
	cmp	r0, #0
	beq	.L256
	mov	r0, r4
	ldr	r1, .L260
	mov	r2, #1
	bl	enemyCheckMoveDown
	rsbs	r0, r0, #1
	movcc	r0, #0
.L256:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L255:
	ldr	r1, .L260
	mvn	r2, #0
	bl	enemyCheckMoveRight
	cmp	r0, #0
	beq	.L256
	mov	r0, r4
	ldr	r1, .L260
	mov	r2, #1
	bl	enemyCheckMoveDown
	rsbs	r0, r0, #1
	movcc	r0, #0
	b	.L256
.L261:
	.align	2
.L260:
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
	ldr	r1, .L266
	mov	r2, #1
	mov	r4, r0
	bl	enemyCheckMoveDown
	cmp	r0, #0
	movne	r0, #0
	bne	.L263
	ldr	r0, [r4, #40]
	cmp	r0, #0
	cmpne	r0, #3
	moveq	r0, #1
	beq	.L263
	cmp	r0, #2
	movne	r0, #0
	moveq	r0, #1
.L263:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L267:
	.align	2
.L266:
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
	beq	.L270
	ldr	r3, [r3, #304]
	tst	r3, #16
	moveq	r0, #0
	movne	r0, #1
	bx	lr
.L270:
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
	ldr	r3, .L293
	stmfd	sp!, {r4, r5}
	ldr	r2, [r3, #40]
	cmp	r2, #4
	beq	.L279
	ldr	r1, [r0, #48]
	cmp	r1, #0
	beq	.L274
	ldr	ip, [r3, #24]
	ldr	r4, [r0, #24]
	mov	ip, ip, asr #4
	mov	r4, r4, asr #4
	cmp	ip, r4
	bge	.L279
	ldr	r5, [r3, #8]
	ldr	r0, [r0, #16]
	rsb	ip, ip, r4
	add	r0, r5, r0
	cmp	r0, ip
	bgt	.L291
.L279:
	mov	r0, #0
.L273:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L274:
	ldr	r4, [r3, #24]
	ldr	ip, [r0, #24]
	mov	r4, r4, asr #4
	mov	ip, ip, asr #4
	cmp	r4, ip
	ble	.L284
	ldr	r5, [r0, #8]
	rsb	r4, r5, r4
	sub	r4, r4, #1
	ldr	r0, [r0, #16]
	rsb	ip, ip, r4
	cmp	ip, r0
	bgt	.L284
	cmp	r2, #2
	beq	.L292
.L276:
	ldr	r3, [r3, #92]
	cmp	r3, #0
	mvnne	r0, #1
	bne	.L273
	ldr	r3, .L293
	ldr	r3, [r3, #72]
	cmp	r3, #0
	movle	r0, #1
	mvngt	r0, #1
	b	.L273
.L284:
	mov	r0, r1
	b	.L273
.L291:
	cmp	r2, #2
	bne	.L276
	ldr	r2, [r3, #48]
	cmp	r1, r2
	beq	.L276
	mvn	r0, #0
	b	.L273
.L292:
	ldr	r2, [r3, #48]
	cmp	r2, #0
	beq	.L276
	mvn	r0, #0
	b	.L273
.L294:
	.align	2
.L293:
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
	beq	.L299
	cmn	r0, #1
	beq	.L300
	cmp	r0, #0
	bne	.L295
	ldr	lr, .L301
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
	ldr	ip, .L301+4
	str	r4, [r5, #0]
	mov	lr, pc
	bx	ip
.L295:
	add	sp, sp, #44
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L300:
	ldr	r3, .L301+8
	ldr	r3, [r3, #40]
	cmp	r3, #2
	bne	.L295
	ldr	ip, .L301+12
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
	ldr	ip, .L301+4
	str	lr, [r4, #0]
	mov	lr, pc
	bx	ip
	b	.L295
.L299:
	ldr	ip, .L301+16
	add	r6, ip, #16
	ldmia	r6!, {r0, r1, r2, r3}
	mov	r5, sp
	stmia	r5!, {r0, r1, r2, r3}
	ldr	lr, .L301+8
	ldr	r3, [r4, #80]
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
	ldr	ip, .L301+4
	str	r6, [r5, #0]
	mov	lr, pc
	bx	ip
	b	.L295
.L302:
	.align	2
.L301:
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
	ble	.L303
	sub	r5, r7, r7, asl #2
	mov	r5, r5, asl #9
	ldr	r3, .L308
	add	r5, r5, #768
	mov	r4, #0
	mov	r9, #18
	mov	sl, #32
	mov	r8, #14
	mov	r6, #10
	mov	fp, #1
.L306:
	ldr	ip, [r3, #88]
	cmp	ip, #0
	bne	.L305
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
	str	r6, [r3, #68]
	str	r6, [r3, #64]
	str	fp, [r3, #88]
	str	ip, [r3, #28]
	str	ip, [r3, #32]
	str	ip, [r3, #56]
	str	ip, [r3, #76]
	str	ip, [r3, #80]
	sub	r0, r0, #1
.L305:
	add	r4, r4, #1
	cmp	r0, #0
	movle	ip, #0
	movgt	ip, #1
	cmp	r4, #9
	movgt	ip, #0
	cmp	ip, #0
	add	r3, r3, #96
	add	r2, r2, r5
	bne	.L306
.L303:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L309:
	.align	2
.L308:
	.word	enemies
	.size	spawnNumEnemies, .-spawnNumEnemies
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
	str	r4, [r0, #68]
	str	r4, [r0, #64]
	str	r3, [r0, #88]
	str	ip, [r0, #28]
	str	ip, [r0, #32]
	str	ip, [r0, #56]
	str	ip, [r0, #76]
	str	ip, [r0, #80]
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
	ldr	r1, .L325
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	ldr	r3, .L325+4
	ldr	r2, [r1, #24]
	mov	r4, r3
	ldr	r1, [r1, #8]
	mov	r7, r2, asr #4
	mov	ip, #0
	b	.L314
.L324:
	add	r5, ip, ip, asl #1
	add	r5, r3, r5, asl #5
	cmp	r0, r5
	beq	.L321
	ldr	r6, [r0, #24]
	ldr	r5, [r4, #24]
	cmp	r6, r5
	ble	.L313
	cmp	r5, r2
	ble	.L321
	mov	r5, r5, asr #4
	rsb	sl, r1, r5
	ldr	r8, [r0, #16]
	add	sl, sl, #1
	rsb	sl, r7, sl
	cmp	sl, r8, asl #1
	bge	.L321
	rsb	r5, r5, r6, asr #4
	cmp	r5, r8, asl #2
	movle	r6, #0
	movgt	r6, #1
	and	r5, r6, #255
.L312:
	add	ip, ip, #1
	cmp	ip, #9
	movgt	r5, #0
	andle	r5, r5, #1
	cmp	r5, #0
	add	r4, r4, #96
	beq	.L323
.L314:
	ldr	r5, [r4, #88]
	cmp	r5, #0
	bne	.L324
.L321:
	mov	r5, #1
	add	ip, ip, #1
	mov	r6, r5
	cmp	ip, #9
	movgt	r5, #0
	andle	r5, r5, #1
	cmp	r5, #0
	add	r4, r4, #96
	bne	.L314
.L323:
	mov	r0, r6
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	bx	lr
.L313:
	bge	.L321
	cmp	r5, r2
	bge	.L321
	mov	r5, r5, asr #4
	ldr	sl, [r4, #8]
	ldr	r8, [r0, #16]
	rsb	r9, r5, r7
	rsb	sl, sl, r9
	cmp	sl, r8, asl #1
	bge	.L321
	sub	r5, r5, r6, asr #4
	cmp	r5, r8, asl #2
	movle	r6, #0
	movgt	r6, #1
	and	r5, r6, #255
	b	.L312
.L326:
	.align	2
.L325:
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
	ldr	r3, [r0, #76]
	ldr	r2, [r0, #88]
	sub	r3, r3, #1
	cmp	r2, #0
	mov	r4, r0
	str	r3, [r0, #76]
	beq	.L327
	ldr	r2, [r0, #64]
	cmp	r2, #0
	ble	.L329
	cmp	r3, #0
	ble	.L330
.L348:
	ldr	r3, [r4, #40]
.L331:
	cmp	r3, #3
	beq	.L346
.L327:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L329:
	cmp	r3, #0
	bgt	.L327
	ldr	r3, [r0, #40]
	cmp	r3, #4
	beq	.L345
	mov	r3, #4
	str	r3, [r0, #40]
	mov	r3, #1
	str	r3, [r0, #92]
	mov	r3, #60
	str	r3, [r0, #76]
	b	.L327
.L330:
	ldr	r1, .L354
	ldr	r2, [r0, #24]
	ldr	r3, [r1, #24]
	cmp	r2, r3
	bgt	.L349
	bge	.L348
	ldr	ip, [r0, #16]
	ldr	r1, [r0, #8]
	sub	r2, r2, #3
	add	r2, r2, ip, asl #4
	sub	r1, r1, #1
	add	r2, r2, r1, asl #4
	mov	r5, #0
	cmp	r3, r2
	str	r5, [r0, #48]
	bge	.L350
	ldr	r3, [r0, #56]
	cmp	r3, #0
	beq	.L351
	mov	r3, #3
	str	r3, [r0, #40]
	mov	r3, #15
	str	r3, [r0, #76]
.L346:
	ldr	r3, [r4, #52]
	cmp	r3, #2
	bne	.L327
	ldr	r3, .L354+4
	ldr	r3, [r3, #48]
	ldr	r2, [r4, #36]
	sub	r3, r3, #3
	cmp	r2, r3
	bne	.L327
	mov	r0, r4
	bl	enemyAttack
	mov	r3, #0
	str	r3, [r4, #56]
	ldr	r3, .L354+8
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
	str	r3, [r4, #76]
	b	.L327
.L345:
	ldr	r3, [r0, #92]
	cmp	r3, #0
	beq	.L327
	ldr	r3, .L354+12
	ldr	r2, [r3, #0]
	mov	r3, #0
	str	r3, [r0, #88]
	ldr	r3, .L354+4
	add	r3, r3, r2, asl #2
	ldr	r2, [r3, #80]
	sub	r2, r2, #1
	str	r2, [r3, #80]
	b	.L327
.L349:
	ldr	ip, [r0, #16]
	ldr	r1, [r1, #8]
	rsb	r2, ip, r2, asr #4
	sub	r1, r1, #1
	add	r2, r2, #3
	add	r3, r1, r3, asr #4
	mov	r5, #1
	cmp	r2, r3
	str	r5, [r0, #48]
	bge	.L352
	ldr	r3, [r0, #56]
	cmp	r3, #0
	beq	.L353
	mov	r3, #3
	str	r3, [r0, #40]
	mov	r3, #30
	str	r3, [r0, #76]
	b	.L346
.L353:
	ldr	r1, .L354+16
	mov	r2, r5
	bl	enemyCheckMoveDown
	subs	r6, r0, #0
	bne	.L348
	mov	r0, r4
	bl	enemyCheckAhead
	cmp	r0, #0
	beq	.L348
	ldr	r3, .L354+8
	str	r6, [r4, #40]
	str	r6, [r4, #32]
	str	r5, [r4, #56]
	mov	lr, pc
	bx	r3
	ldr	r2, .L354+20
	smull	r3, r2, r0, r2
	mov	r3, r0, asr #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #4
	rsb	r3, r3, r3, asl #4
	sub	r3, r0, r3, asl #1
	add	r3, r3, #5
	str	r3, [r4, #76]
	ldr	r3, [r4, #40]
	b	.L331
.L352:
	bl	enemyCheckAhead
	cmp	r0, #0
	beq	.L341
	mvn	r3, #23
	str	r3, [r4, #32]
	mov	r3, #0
	str	r5, [r4, #40]
	str	r3, [r4, #56]
	b	.L327
.L341:
	str	r0, [r4, #40]
	str	r0, [r4, #32]
	b	.L327
.L351:
	ldr	r1, .L354+16
	mov	r2, #1
	bl	enemyCheckMoveDown
	subs	r5, r0, #0
	bne	.L348
	mov	r0, r4
	bl	enemyCheckAhead
	cmp	r0, #0
	beq	.L348
	mov	r3, #1
	str	r3, [r4, #56]
	str	r5, [r4, #40]
	ldr	r3, .L354+8
	str	r5, [r4, #32]
	mov	lr, pc
	bx	r3
	mov	r1, #30
	ldr	r3, .L354+24
	mov	lr, pc
	bx	r3
	add	r1, r1, #5
	str	r1, [r4, #76]
	b	.L348
.L350:
	bl	enemyCheckAhead
	cmp	r0, #0
	beq	.L341
	mov	r3, #1
	str	r3, [r4, #40]
	mov	r3, #24
	str	r3, [r4, #32]
	str	r5, [r4, #56]
	b	.L327
.L355:
	.align	2
.L354:
	.word	player
	.word	.LANCHOR0
	.word	rand
	.word	.LANCHOR1
	.word	collisionmapBitmap
	.word	-2004318071
	.word	__aeabi_idivmod
	.size	enemyDoAI, .-enemyDoAI
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
	blt	.L367
	bl	enemyMoveDownLimit
.L358:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	ble	.L359
	mov	r0, r4
	bl	enemyMoveRightLimit
.L360:
	mov	r0, r4
	bl	enemyFall
	ldr	r5, [r4, #32]
	cmp	r5, #0
	ble	.L361
	mov	r0, r4
	ldr	r1, .L369
	mov	r2, #1
	bl	enemyCheckMoveDown
	cmp	r0, #0
	beq	.L368
.L362:
	ldr	r3, [r4, #20]
	mov	r3, r3, asr #4
	cmp	r3, #256
	movhi	r3, #3328
	strhi	r3, [r4, #20]
	ldr	r3, [r4, #24]
	mov	r2, r3, asr #4
	cmp	r2, #1536
	ldr	r2, .L369+4
	movhi	r3, #7616
	ldr	r1, [r4, #8]
	addhi	r3, r3, #32
	ldr	r2, [r2, #0]
	add	r1, r3, r1
	strhi	r3, [r4, #24]
	cmp	r2, r1, asr #4
	movgt	r3, #0
	bgt	.L365
	ldr	r2, .L369+8
	ldr	r2, [r2, #0]
	cmp	r2, r3, asr #4
	movle	r3, #0
	movgt	r3, #1
.L365:
	str	r3, [r4, #84]
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L368:
	ldr	r3, [r4, #76]
	cmp	r3, #0
	subgt	r5, r5, #1
	strgt	r5, [r4, #32]
	b	.L362
.L359:
	beq	.L360
	mov	r0, r4
	bl	enemyMoveLeftLimit
	b	.L360
.L367:
	bl	enemyMoveUpLimit
	b	.L358
.L361:
	beq	.L362
	mov	r0, r4
	ldr	r1, .L369
	mov	r2, #1
	bl	enemyCheckMoveDown
	cmp	r0, #0
	bne	.L362
	ldr	r3, [r4, #76]
	cmp	r3, #0
	addgt	r5, r5, #1
	strgt	r5, [r4, #32]
	b	.L362
.L370:
	.align	2
.L369:
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
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r6, .L376
	mov	r4, #0
	mov	r5, r6
	b	.L373
.L372:
	add	r4, r4, #1
	cmp	r4, #10
	add	r5, r5, #96
	beq	.L375
.L373:
	ldr	r3, [r5, #88]
	cmp	r3, #0
	beq	.L372
	add	r0, r4, r4, asl #1
	add	r0, r6, r0, asl #5
	add	r4, r4, #1
	bl	enemyDoAI
	cmp	r4, #10
	add	r5, r5, #96
	bne	.L373
.L375:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L377:
	.align	2
.L376:
	.word	enemies
	.size	enemiesDoAI, .-enemiesDoAI
	.align	2
	.global	enemiesMove
	.type	enemiesMove, %function
enemiesMove:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r6, .L383
	mov	r4, #0
	mov	r5, r6
	b	.L380
.L379:
	add	r4, r4, #1
	cmp	r4, #10
	add	r5, r5, #96
	beq	.L382
.L380:
	ldr	r3, [r5, #88]
	cmp	r3, #0
	beq	.L379
	add	r0, r4, r4, asl #1
	add	r0, r6, r0, asl #5
	add	r4, r4, #1
	bl	enemyMove
	cmp	r4, #10
	add	r5, r5, #96
	bne	.L380
.L382:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L384:
	.align	2
.L383:
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
	ldr	r4, .L402
	mov	r0, #3
	ldr	r1, .L402+4
	add	r2, r2, #512
	mov	r3, #256
	ldr	ip, .L402+8
	mov	lr, pc
	bx	ip
	ldr	r5, [r4, #40]
	cmp	r5, #4
	ldrls	pc, [pc, r5, asl #2]
	b	.L386
.L392:
	.word	.L387
	.word	.L388
	.word	.L389
	.word	.L390
	.word	.L391
.L388:
	ldr	r3, .L402+12
	ldr	r6, [r4, #52]
	ldr	r0, [r4, #36]
	ldr	r1, [r3, r6, asl #2]
	ldr	r3, .L402+16
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldr	r3, .L402
	bne	.L386
	cmp	r6, #8
	str	r1, [r3, #36]
	strgt	r1, [r3, #40]
	movgt	r5, r1
	bgt	.L386
	cmp	r6, #4
	beq	.L401
	cmp	r6, #0
	streq	r6, [r3, #56]
.L396:
	add	r6, r6, #1
	str	r6, [r4, #52]
	ldr	r5, [r4, #40]
.L386:
	ldr	r3, [r4, #44]
	cmp	r3, r5
	ldr	r3, .L402
	movne	r2, #0
	strne	r2, [r3, #36]
	strne	r2, [r3, #52]
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	str	r5, [r4, #44]
	str	r3, [r4, #36]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L391:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	mov	r3, #0
	str	r3, [r4, #36]
	mov	r3, #2
	str	r3, [r4, #52]
	ldrlt	r3, .L402
	movlt	r2, #1
	strlt	r2, [r3, #52]
	b	.L386
.L387:
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
	ldr	r1, .L402
	bne	.L386
	ldr	r2, [r1, #52]
	cmp	r2, #0
	str	r3, [r1, #36]
	ble	.L398
.L400:
	str	r3, [r1, #52]
	b	.L386
.L389:
	ldr	r3, [r4, #36]
	ands	r3, r3, #1
	ldr	r2, .L402
	bne	.L386
	ldr	r1, [r2, #52]
	cmp	r1, #2
	str	r3, [r2, #36]
	addle	r1, r1, #1
	movgt	r3, #3
	strle	r1, [r2, #52]
	strgt	r3, [r2, #52]
	b	.L386
.L390:
	ldr	r3, [r4, #36]
	ldr	r2, .L402+20
	smull	r1, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, asl #1
	subs	r3, r3, r2, asl #1
	ldr	r1, .L402
	bne	.L386
	ldr	r2, [r1, #52]
	cmp	r2, #4
	str	r3, [r1, #36]
	bgt	.L400
.L398:
	add	r2, r2, #1
	str	r2, [r1, #52]
	b	.L386
.L401:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	moveq	r2, #9
	streq	r2, [r3, #52]
	beq	.L386
	b	.L396
.L403:
	.align	2
.L402:
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
	ldr	r4, .L422
	ldr	r3, [r4, #76]
	cmp	r3, #0
	subgt	r3, r3, #1
	mov	r2, #83886080
	strgt	r3, [r4, #76]
	mov	r0, #3
	ldr	r1, .L422+4
	add	r2, r2, #512
	mov	r3, #256
	ldr	ip, .L422+8
	mov	lr, pc
	bx	ip
	ldr	r5, [r4, #40]
	cmp	r5, #4
	ldrls	pc, [pc, r5, asl #2]
	b	.L406
.L412:
	.word	.L407
	.word	.L408
	.word	.L409
	.word	.L410
	.word	.L411
.L408:
	ldr	r3, .L422+12
	ldr	r6, [r4, #52]
	ldr	r0, [r4, #36]
	ldr	r1, [r3, r6, asl #2]
	ldr	r3, .L422+16
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldr	r3, .L422
	bne	.L406
	cmp	r6, #8
	str	r1, [r3, #36]
	strgt	r1, [r3, #40]
	movgt	r5, r1
	bgt	.L406
	cmp	r6, #4
	beq	.L421
	cmp	r6, #0
	streq	r6, [r3, #56]
.L416:
	add	r6, r6, #1
	str	r6, [r4, #52]
	ldr	r5, [r4, #40]
.L406:
	ldr	r3, [r4, #44]
	cmp	r3, r5
	ldr	r3, .L422
	movne	r2, #0
	strne	r2, [r3, #36]
	strne	r2, [r3, #52]
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	str	r5, [r4, #44]
	str	r3, [r4, #36]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L411:
	ldr	r3, [r4, #76]
	cmp	r3, #14
	mov	r3, #0
	str	r3, [r4, #36]
	mov	r3, #2
	str	r3, [r4, #52]
	ldrgt	r3, .L422
	movgt	r2, #1
	strgt	r2, [r3, #52]
	b	.L406
.L407:
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
	ldr	r1, .L422
	bne	.L406
	ldr	r2, [r1, #52]
	cmp	r2, #0
	str	r3, [r1, #36]
	ble	.L418
.L420:
	str	r3, [r1, #52]
	b	.L406
.L409:
	ldr	r3, [r4, #36]
	ands	r3, r3, #1
	ldr	r2, .L422
	bne	.L406
	ldr	r1, [r2, #52]
	cmp	r1, #2
	str	r3, [r2, #36]
	addle	r1, r1, #1
	movgt	r3, #3
	strle	r1, [r2, #52]
	strgt	r3, [r2, #52]
	b	.L406
.L410:
	ldr	r3, [r4, #36]
	ldr	r2, .L422+20
	smull	r1, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, asl #1
	subs	r3, r3, r2, asl #1
	ldr	r1, .L422
	bne	.L406
	ldr	r2, [r1, #52]
	cmp	r2, #4
	str	r3, [r1, #36]
	bgt	.L420
.L418:
	add	r2, r2, #1
	str	r2, [r1, #52]
	b	.L406
.L421:
	ldr	r2, [r3, #56]
	cmp	r2, #0
	moveq	r2, #9
	streq	r2, [r3, #52]
	beq	.L406
	b	.L416
.L423:
	.align	2
.L422:
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
	b	.L425
.L431:
	.word	.L426
	.word	.L427
	.word	.L428
	.word	.L429
	.word	.L430
.L430:
	ldr	r3, [r0, #36]
	ands	r3, r3, #7
	bne	.L425
	ldr	r2, [r0, #52]
	cmp	r2, #2
	str	r3, [r0, #36]
	bgt	.L425
.L438:
	add	r2, r2, #1
	str	r2, [r4, #52]
.L425:
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
.L426:
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
	bne	.L425
	ldr	r2, [r0, #52]
	cmp	r2, #0
	str	r3, [r0, #36]
	blt	.L438
	str	r3, [r4, #52]
	b	.L425
.L428:
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
	b	.L425
.L427:
	ldr	r3, [r0, #36]
	ldr	r2, .L440
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #2
	add	r2, r2, r2, asl #2
	subs	r3, r3, r2, asl #1
	bne	.L425
	ldr	r2, [r0, #52]
	cmp	r2, #2
	str	r3, [r0, #36]
	ble	.L438
	str	r3, [r4, #52]
	b	.L425
.L429:
	ldr	r6, [r0, #52]
	ldr	r3, .L440+4
	add	r3, r3, r6, asl #2
	ldr	r1, [r3, #40]
	ldr	r0, [r0, #36]
	ldr	r3, .L440+8
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L425
	cmp	r6, #3
	streq	r1, [r4, #36]
	beq	.L435
	cmp	r6, #1
	addle	r6, r6, #1
	str	r1, [r4, #36]
	strle	r6, [r4, #52]
	ble	.L425
.L435:
	mov	r5, #0
	str	r5, [r4, #40]
	b	.L425
.L441:
	.align	2
.L440:
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
	ldr	r5, .L445
	mov	r4, #0
.L443:
	add	r0, r4, r4, asl #1
	add	r0, r5, r0, asl #5
	add	r4, r4, #1
	bl	animateEnemy
	cmp	r4, #10
	bne	.L443
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L446:
	.align	2
.L445:
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
	ldr	r3, .L450
	mov	r2, #0
	add	r1, r3, #960
.L448:
	str	r2, [r3, #88]
	str	r2, [r3, #84]
	str	r2, [r3, #80]
	add	r3, r3, #96
	cmp	r3, r1
	bne	.L448
	ldr	r1, .L450+4
	ldr	r3, .L450+8
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
.L451:
	.align	2
.L450:
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
	ldr	r2, .L484
	sub	sp, sp, #12
	ldr	r3, [r2, #0]
	ldr	r4, .L484+4
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r2, #0]
	ldr	r3, [r4, #4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #4]
	ldr	r1, .L484+8
	ldr	r3, [r4, #0]
	add	r0, r1, r3, asl #2
	ldr	r0, [r0, #80]
	cmp	r0, #0
	ldr	r0, .L484+4
	ble	.L475
.L455:
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L452
.L461:
	.word	.L457
	.word	.L458
	.word	.L459
	.word	.L460
.L460:
	ldr	r3, .L484+12
	ldr	r3, [r3, #0]
	cmp	r3, #784
	blt	.L467
	ldr	r3, [r4, #8]
	cmp	r3, #7
	ldr	r5, .L484+4
	beq	.L476
	ldr	r2, [r1, #92]
	cmp	r2, #18
	ble	.L477
.L467:
	ldr	ip, [r4, #4]
	cmp	ip, #0
	ldr	r4, .L484+4
	bne	.L452
	ldr	r3, [r1, #92]
	cmp	r3, #17
	ldr	r1, .L484+8
	bgt	.L452
	ldr	r2, [r4, #8]
	cmp	r2, #9
	beq	.L478
	cmp	r3, #9
	bgt	.L452
	cmp	r2, #10
	beq	.L479
	cmp	r3, #7
	bgt	.L452
	cmp	r2, #11
	bne	.L452
	ldr	r3, .L484+16
	ldr	r3, [r3, #60]
	ldr	r0, [r1, #144]
	mov	r2, #16384
	mov	r1, #2048
	add	r3, r3, #1
.L472:
	str	ip, [sp, #0]
	bl	spawnNumEnemies
	ldr	r3, [r4, #8]
	add	r3, r3, #1
	str	r3, [r4, #8]
.L452:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L459:
	ldr	r3, .L484+12
	ldr	r3, [r3, #0]
	cmp	r3, #528
	bge	.L480
.L464:
	ldr	ip, [r4, #4]
	cmp	ip, #0
	ldr	r4, .L484+4
	bne	.L452
	ldr	r3, [r4, #8]
	cmp	r3, #5
	ldreq	r0, [r1, #120]
	beq	.L474
	ldr	r2, [r1, #88]
	cmp	r2, #6
	bgt	.L452
	cmp	r3, #6
	bne	.L452
	ldr	r3, .L484+8
	ldr	r0, [r3, #124]
.L474:
	ldr	r3, .L484+16
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
	b	.L452
.L458:
	ldr	r3, .L484+12
	ldr	r3, [r3, #0]
	cmp	r3, #272
	bge	.L481
.L463:
	ldr	r3, [r1, #84]
	cmp	r3, #5
	bgt	.L452
	ldr	r3, [r4, #8]
	cmp	r3, #2
	ldr	r4, .L484+4
	bne	.L452
	ldr	r3, .L484+8
	ldr	r0, [r3, #108]
	ldr	r3, .L484+16
	ldr	r3, [r3, #60]
	mov	r1, #2048
	mov	r2, #8192
	add	r3, r3, #1
	mov	ip, #1
	b	.L472
.L457:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L482
.L462:
	mov	r3, #1
	str	r3, [r4, #8]
	b	.L452
.L475:
	ldr	ip, .L484+20
	ldr	r5, [ip, #0]
	add	r5, r5, #256
	add	r3, r3, #1
	str	r5, [ip, #0]
	mov	ip, #0
	stmia	r0, {r3, ip}	@ phole stm
	mov	r0, #200
	str	r0, [r2, #0]
	b	.L455
.L480:
	ldr	r3, [r4, #8]
	cmp	r3, #3
	ldr	r5, .L484+4
	beq	.L483
	cmp	r3, #4
	bne	.L464
	ldr	r3, .L484+16
	ldr	r0, [r1, #116]
	mov	r1, #2048
	ldr	r3, [r3, #60]
	mov	r2, r1
	b	.L473
.L481:
	ldr	ip, [r4, #8]
	cmp	ip, #1
	ldr	r5, .L484+4
	bne	.L463
	ldr	r3, .L484+16
	ldr	r3, [r3, #60]
	ldr	r0, [r1, #104]
	mov	r1, #2048
	mov	r2, r1
	add	r3, r3, #1
.L471:
	str	ip, [sp, #0]
	bl	spawnNumEnemies
	ldr	r3, [r5, #8]
	add	r3, r3, #1
	str	r3, [r5, #8]
	b	.L452
.L482:
	ldr	r3, .L484+16
	ldr	r3, [r3, #60]
	mov	ip, #1
	mov	r0, #4
	mov	r1, #2048
	mov	r2, #4096
	add	r3, r3, #1
	str	ip, [sp, #0]
	bl	spawnNumEnemies
	b	.L462
.L477:
	cmp	r3, #8
	bne	.L467
	ldr	r3, .L484+8
	ldr	r0, [r3, #132]
	ldr	r3, .L484+16
	ldr	r3, [r3, #60]
	mov	r1, #2048
	mov	r2, #16384
.L473:
	add	r3, r3, #1
	mov	ip, #0
	str	ip, [sp, #0]
	bl	spawnNumEnemies
	ldr	r3, [r5, #8]
	add	r3, r3, #1
	str	r3, [r5, #8]
	mov	r3, #300
	str	r3, [r5, #4]
	b	.L452
.L476:
	ldr	r3, .L484+16
	ldr	r3, [r3, #60]
	ldr	r0, [r1, #128]
	mov	r2, #16384
	mov	r1, #2048
	add	r3, r3, #1
	mov	ip, #0
	b	.L471
.L483:
	ldr	r3, .L484+16
	ldr	r3, [r3, #60]
	ldr	r0, [r1, #112]
	mov	r2, #12288
	mov	r1, #2048
	add	r3, r3, #1
	mov	ip, #0
	b	.L471
.L478:
	ldr	r3, .L484+16
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
	b	.L452
.L479:
	ldr	r3, .L484+16
	ldr	r3, [r3, #60]
	ldr	r0, [r1, #140]
	mov	r2, #12288
	mov	r1, #2048
	add	r3, r3, #1
	mov	ip, #1
	b	.L472
.L485:
	.align	2
.L484:
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
	.comm	comboCount,24,4
	.comm	soundA,36,4
	.comm	soundB,36,4
	.comm	swordSound,36,4
	.comm	healSound,36,4
	.comm	swordMissSound,36,4
	.comm	swordBlockSound,36,4
	.comm	enemySwordHitSound,36,4
	.comm	enemies,960,4
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
	.word	4
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
