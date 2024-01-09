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
	.file	"main.c"
	.text
	.align	2
	.global	unpauseGame
	.type	unpauseGame, %function
unpauseGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r6, #67108864
	mov	r3, #4928	@ movhi
	strh	r3, [r6, #0]	@ movhi
	ldr	r0, .L2
	ldr	r3, .L2+4
	mov	lr, pc
	bx	r3
	ldr	r7, .L2+8
	mov	ip, #23040	@ movhi
	ldr	r4, .L2+12
	strh	ip, [r6, #8]	@ movhi
	mov	r0, #3
	ldr	r1, .L2+16
	mov	r2, #100663296
	mov	r3, #1488
	mov	lr, pc
	bx	r4
	ldr	r0, .L2+20
	ldr	r1, [r7, #0]
	mov	r2, #4
	mov	r3, #26
	ldr	ip, .L2+24
	mov	lr, pc
	bx	ip
	mov	ip, #22528
	add	ip, ip, #4
	strh	ip, [r6, #10]	@ movhi
	mov	r5, #100663296
	ldr	r6, .L2+28
	add	r2, r5, #16384
	mov	r0, #3
	ldr	r1, .L2+32
	mov	r3, #1680
	mov	lr, pc
	bx	r4
	add	r2, r5, #49152
	mov	r1, r6
	mov	r0, #3
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	mov	r1, r6
	add	r2, r5, #51200
	mov	lr, pc
	bx	r4
	mov	r3, #2
	str	r3, [r7, #4]
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bx	lr
.L3:
	.align	2
.L2:
	.word	mainBackgroundPal
	.word	loadPalette
	.word	.LANCHOR0
	.word	DMANow
	.word	gameBackgroundTiles
	.word	gameBackgroundMap
	.word	loadMap
	.word	mainBackgroundMap
	.word	mainBackgroundTiles
	.size	unpauseGame, .-unpauseGame
	.align	2
	.global	initInstructions
	.type	initInstructions, %function
initInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L19
	mov	r3, #0
.L5:
	ldrh	r2, [r4, r3]
	orr	r2, r2, #512
	strh	r2, [r4, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L5
	ldr	r3, .L19+4
	mov	lr, pc
	bx	r3
	ldr	r5, .L19+8
	ldr	r3, [r5, #40]
	cmp	r3, #4
	ldrls	r2, .L19+12
	ldrls	r1, [r2, r3, asl #2]
	ldr	r3, [r5, #52]
	movhi	r1, #0
	add	r1, r1, r3
	ldr	r3, .L19+16
	mov	r2, #100663296
	mov	r0, #3
	add	r1, r3, r1, asl #11
	add	r2, r2, #65536
	mov	r3, #1024
	ldr	r6, .L19+20
	mov	lr, pc
	bx	r6
	ldr	r3, [r5, #72]
	ldr	r2, .L19+24
	smull	r0, r2, r3, r2
	mov	r3, r3, asr #31
	rsb	r2, r3, r2, asr #1
	mov	r3, r2, lsr #31
	add	r2, r2, r3
	and	r0, r2, #1
	ldr	r7, [r5, #4]
	ldr	r1, [r5, #48]
	rsb	r3, r3, r0
	cmp	r3, #1
	ldrb	r2, [r5, #0]	@ zero_extendqisi2
	ldr	lr, [r5, #60]
	mov	r1, r1, asl #12
	mov	r7, r7, asl #23
	orr	r7, r1, r7, lsr #23
	moveq	r8, #512
	movne	r8, #0
	mov	lr, lr, asl #3
	orr	r8, r8, r2
	mvn	r7, r7, asl #18
	add	ip, r4, lr
	strh	r8, [r4, lr]	@ movhi
	mvn	r7, r7, lsr #18
	mov	lr, #1024	@ movhi
	mov	r0, #3
	ldr	r1, .L19
	mov	r2, #117440512
	mov	r3, #512
	strh	lr, [ip, #4]	@ movhi
	strh	r7, [ip, #2]	@ movhi
	mov	lr, pc
	bx	r6
	ldr	r1, [r5, #40]
	mov	r2, #14848
	mov	r3, #67108864
	add	r2, r2, #4
	mov	r0, #15104	@ movhi
	mov	lr, #4928	@ movhi
	sub	r1, r1, #1
	strh	r0, [r3, #8]	@ movhi
	strh	lr, [r3, #0]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	cmp	r1, #3
	ldrls	pc, [pc, r1, asl #2]
	b	.L16
.L13:
	.word	.L9
	.word	.L10
	.word	.L11
	.word	.L12
.L11:
	ldr	r4, [r5, #48]
	ldr	r3, .L19+28
	rsb	r4, r4, #2
	add	r4, r3, r4, asl #11
.L8:
	ldr	r0, .L19+32
	ldr	r3, .L19+36
	mov	lr, pc
	bx	r3
	mov	r0, #3
	ldr	r1, .L19+40
	mov	r2, #100663296
	mov	r3, #1888
	mov	lr, pc
	bx	r6
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L19+44
	add	r2, r2, #55296
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L19+48
	add	r2, r2, #16384
	mov	r3, #1888
	mov	lr, pc
	bx	r6
	mov	r2, #100663296
	mov	r0, #3
	mov	r1, r4
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	ldr	r1, .L19+52
	mov	r3, #0
	mov	r2, #67108864
	mov	r0, #96
	strh	r3, [r2, #16]	@ movhi
	str	r3, [r1, #8]
	strh	r3, [r2, #18]	@ movhi
	str	r0, [r1, #12]
	mov	r0, #183
	strh	r3, [r2, #20]	@ movhi
	str	r0, [r5, #4]
	strh	r3, [r2, #22]	@ movhi
	mov	r3, #48
	str	r3, [r5, #0]
	mov	r3, #1
	str	r3, [r1, #4]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L10:
	ldr	r4, [r5, #48]
	ldr	r3, .L19+28
	rsb	r4, r4, #8
	add	r4, r3, r4, asl #11
	b	.L8
.L9:
	ldr	r4, [r5, #48]
	ldr	r3, .L19+28
	rsb	r4, r4, #5
	add	r4, r3, r4, asl #11
	b	.L8
.L12:
	ldr	r4, [r5, #48]
	ldr	r3, .L19+28
	rsb	r4, r4, #11
	add	r4, r3, r4, asl #11
	b	.L8
.L16:
	ldr	r4, .L19+28
	b	.L8
.L20:
	.align	2
.L19:
	.word	shadowOAM
	.word	initPlayer
	.word	player
	.word	.LANCHOR1
	.word	playerSpritesTiles
	.word	DMANow
	.word	1717986919
	.word	instructionsBackgroundMap
	.word	instructionsBackgroundPal
	.word	loadPalette
	.word	instructionsBackCanvasTiles
	.word	instructionsBackCanvasMap
	.word	instructionsBackgroundTiles
	.word	.LANCHOR0
	.size	initInstructions, .-initInstructions
	.align	2
	.global	initPause
	.type	initPause, %function
initPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r3, #512	@ movhi
	mov	r6, #67108864
	ldr	r0, .L22
	strh	r3, [r6, #0]	@ movhi
	ldr	r3, .L22+4
	mov	lr, pc
	bx	r3
	mov	ip, #6400
	add	ip, ip, #4
	mov	r5, #100663296
	mov	r0, #3
	ldr	r1, .L22+8
	add	r2, r5, #16384
	mov	r3, #2064
	ldr	r4, .L22+12
	strh	ip, [r6, #10]	@ movhi
	mov	lr, pc
	bx	r4
	add	r2, r5, #51200
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L22+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L22+20
	mov	r2, #3
	str	r2, [r3, #4]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	pauseBackgroundPal
	.word	loadPalette
	.word	pauseBackgroundTiles
	.word	DMANow
	.word	pauseBackgroundMap
	.word	.LANCHOR0
	.size	initPause, .-initPause
	.align	2
	.global	animate
	.type	animate, %function
animate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r3, .L25
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+4
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r3, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	animatePlayer
	.word	animateEnemies
	.size	animate, .-animate
	.global	__aeabi_idiv
	.align	2
	.global	updateOAM
	.type	updateOAM, %function
updateOAM:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, .L58
	sub	sp, sp, #68
	ldr	r3, [r4, #40]
	sub	r3, r3, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L28
.L33:
	.word	.L29
	.word	.L30
	.word	.L31
	.word	.L32
.L31:
	ldr	r3, [r4, #52]
	mov	r1, #16
.L34:
	add	r1, r3, r1
	ldr	r3, .L58+4
	mov	r2, #100663296
	mov	r0, #3
	add	r1, r3, r1, asl #11
	add	r2, r2, #65536
	mov	r3, #1024
	ldr	ip, .L58+8
	mov	lr, pc
	bx	ip
	ldr	r3, [r4, #72]
	ldr	r2, .L58+12
	smull	r0, r2, r3, r2
	mov	r3, r3, asr #31
	rsb	r2, r3, r2, asr #1
	mov	r3, r2, lsr #31
	add	r2, r2, r3
	and	r2, r2, #1
	rsb	r3, r3, r2
	cmp	r3, #1
	ldr	fp, [r4, #60]
	ldr	r3, .L58
	ldrb	r0, [r4, #0]	@ zero_extendqisi2
	beq	.L35
	ldr	r3, [r3, #92]
	mov	lr, #0
.L36:
	ldr	ip, [r4, #4]
	ldr	r2, [r4, #48]
	mov	ip, ip, asl #23
	mov	r2, r2, asl #12
	ldr	r8, .L58+16
	orr	ip, r2, ip, lsr #23
	cmp	r3, #0
	mov	r1, fp, asl #3
	orr	lr, lr, r0
	mvn	ip, ip, asl #18
	moveq	r0, r3
	movne	r0, #8192
	ldr	r3, .L58+20
	add	r2, r8, r1
	mvn	ip, ip, lsr #18
	strh	lr, [r8, r1]	@ movhi
	ldr	r6, .L58+24
	strh	ip, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	add	r5, r3, #1000
	mov	r2, r8
.L40:
	ldr	r1, [r3, #0]
	cmp	r1, #4
	addls	r1, r6, r1, asl #2
	ldrls	sl, [r1, #20]
	ldr	r1, [r3, #52]
	movhi	sl, #0
	cmp	r1, #0
	ldrb	lr, [r3, #-40]	@ zero_extendqisi2
	moveq	ip, #512
	beq	.L39
	ldr	ip, [r3, #48]
	cmp	ip, #0
	moveq	ip, #512
	movne	ip, #0
.L39:
	ldr	r7, [r3, #-36]
	add	r0, r3, #8
	ldmia	r0, {r0, r1}	@ phole ldm
	mov	r7, r7, asl #23
	mov	r0, r0, asl #12
	add	r1, r1, #4
	orr	r0, r0, r7, lsr #23
	add	r1, r1, sl
	mvn	r0, r0, asl #17
	mov	r1, r1, asl #4
	add	r3, r3, #100
	orr	ip, ip, lr
	mvn	r0, r0, lsr #17
	orr	r1, r1, #4096
	cmp	r3, r5
	strh	ip, [r2, #8]	@ movhi
	strh	r0, [r2, #10]	@ movhi
	strh	r1, [r2, #12]	@ movhi
	add	r2, r2, #8
	bne	.L40
	ldr	r2, [r4, #80]
	ldr	r1, .L58+12
	smull	r3, r1, r2, r1
	ldr	r3, .L58+28
	ldr	r9, [r3, #4]
	add	ip, fp, #22
	mov	r7, r9, asl #16
	mov	r7, r7, lsr #16
	mov	ip, ip, asl #3
	str	ip, [sp, #4]
	add	ip, r7, #6
	str	ip, [sp, #32]
	mov	r0, r2, asr #31
	ldr	ip, [sp, #4]
	add	lr, fp, #23
	rsb	r1, r0, r1, asr #2
	mov	lr, lr, asl #3
	add	r0, r1, r1, asl #2
	str	lr, [sp, #16]
	add	ip, r8, ip
	sub	r2, r2, r0, asl #1
	str	ip, [sp, #12]
	add	r0, fp, #24
	ldr	ip, [sp, #16]
	mov	r0, r0, asl #3
	str	r0, [sp, #48]
	add	ip, r8, ip
	add	r1, r1, #1008
	str	ip, [sp, #20]
	add	r1, r1, #2
	ldr	ip, [sp, #48]
	mvn	r1, r1, asl #20
	str	r1, [sp, #28]
	add	ip, r8, ip
	str	ip, [sp, #52]
	ldr	ip, [sp, #28]
	add	r2, r2, #1008
	mvn	ip, ip, lsr #20
	str	ip, [sp, #28]
	add	r2, r2, #2
	ldr	ip, [sp, #32]
	mvn	r2, r2, asl #20
	str	r2, [sp, #36]
	bic	ip, ip, #65024
	add	lr, r7, #13
	str	ip, [sp, #32]
	ldr	ip, [sp, #36]
	str	lr, [sp, #40]
	bic	r9, r9, #65024
	str	r9, [sp, #56]
	mvn	r9, ip, lsr #20
	ldr	ip, [sp, #40]
	add	r1, r7, #19
	str	r1, [sp, #44]
	bic	ip, ip, #65024
	str	ip, [sp, #36]
	ldr	ip, [sp, #44]
	add	r2, r7, #25
	str	r2, [sp, #60]
	bic	ip, ip, #65024
	ldr	r6, [r3, #0]
	str	ip, [sp, #40]
	ldr	ip, [sp, #60]
	str	r6, [sp, #24]
	bic	ip, ip, #65024
	str	ip, [sp, #44]
	ldr	ip, [sp, #24]
	add	sl, fp, #20
	mov	ip, ip, asl #16
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	mov	sl, sl, asl #3
	str	ip, [sp, #24]
	ldr	ip, [sp, #56]
	add	r6, r8, sl
	strh	ip, [r6, #2]	@ movhi
	ldr	ip, [sp, #28]
	add	r5, fp, #21
	strh	ip, [r6, #4]	@ movhi
	mov	r5, r5, asl #3
	ldr	r6, [sp, #32]
	add	lr, r8, r5
	strh	r6, [lr, #2]	@ movhi
	strh	r9, [lr, #4]	@ movhi
	ldr	r6, [sp, #12]
	mvn	r0, #3072
	ldr	lr, [sp, #36]
	mov	r1, r0
	mov	r2, r0
	sub	r0, r0, #3
	strh	lr, [r6, #2]	@ movhi
	strh	r0, [r6, #4]	@ movhi
	ldr	ip, [sp, #4]
	ldr	r0, [sp, #20]
	ldr	lr, [sp, #40]
	ldr	r6, [sp, #24]
	strh	r3, [r8, sl]	@ movhi
	strh	lr, [r0, #2]	@ movhi
	strh	r3, [r8, r5]	@ movhi
	sub	r1, r1, #2
	strh	r3, [r8, ip]	@ movhi
	ldr	lr, [sp, #48]
	ldr	ip, [sp, #16]
	strh	r1, [r0, #4]	@ movhi
	and	r1, r6, #16711680
	ldr	r6, [r4, #64]
	strh	r3, [r8, ip]	@ movhi
	ldr	r0, [sp, #44]
	mov	ip, #0
	strh	r3, [r8, lr]	@ movhi
	ldr	r3, [sp, #52]
	sub	r2, r2, #1
	str	r6, [sp, #20]
	mov	r1, r1, lsr #16
	mov	r6, ip
	sub	ip, ip, #3088
	add	r5, fp, #25
	strh	r0, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldr	sl, .L58+32
	str	r1, [sp, #16]
	str	ip, [sp, #12]
	add	r5, r8, r5, asl #3
	mov	r9, r7
.L42:
	add	r6, r6, #1
	ldr	r0, [sp, #20]
	mov	r1, r6
	mov	lr, pc
	bx	sl
	ldr	ip, [sp, #16]
	cmp	r0, #0
	moveq	r0, #512
	movne	r0, #0
	add	r3, r9, #8
	ldr	lr, [sp, #12]
	bic	r2, r9, #65024
	orr	r0, r0, ip
	mov	r9, r3, asl #16
	cmp	r6, #5
	strh	r0, [r5, #0]	@ movhi
	strh	r2, [r5, #2]	@ movhi
	strh	lr, [r5, #4]	@ movhi
	mov	r9, r9, lsr #16
	add	r5, r5, #8
	bne	.L42
	ldr	r0, [sp, #24]
	ldr	r3, [r4, #84]
	add	r2, r0, #524288
	and	r2, r2, #16711680
	ldr	r1, [r4, #88]
	mov	r2, r2, lsr #16
	add	r3, r3, r3, asl #2
	add	r5, fp, #30
	mvn	r9, #3072
	str	r1, [sp, #20]
	str	r2, [sp, #12]
	str	r3, [sp, #16]
	add	r5, r8, r5, asl #3
	mov	r6, #0
	sub	r9, r9, #14
.L44:
	add	r6, r6, #1
	mov	r1, r6
	ldr	r0, [sp, #16]
	mov	lr, pc
	bx	sl
	ldr	r1, [sp, #20]
	mov	lr, pc
	bx	sl
	ldr	ip, [sp, #12]
	cmp	r0, #0
	moveq	r0, #512
	movne	r0, #0
	add	r3, r7, #8
	bic	r2, r7, #65024
	orr	r0, r0, ip
	mov	r7, r3, asl #16
	cmp	r6, #5
	strh	r0, [r5, #0]	@ movhi
	strh	r2, [r5, #2]	@ movhi
	strh	r9, [r5, #4]	@ movhi
	mov	r7, r7, lsr #16
	add	r5, r5, #8
	bne	.L44
	ldr	r3, .L58+36
	ldr	r3, [r3, #0]
	ldr	r2, [r4, #24]
	sub	r3, r3, #240
	cmp	r3, r2, asr #4
	movle	r1, #16896
	add	fp, fp, #36
	addle	r1, r1, #4
	ble	.L45
	ldr	r3, .L58+40
	ldr	r2, .L58+44
	ldr	r3, [r3, #0]
	smull	r0, r2, r3, r2
	mov	r3, r3, asr #31
	rsb	r2, r3, r2, asr #3
	mov	r1, #16384
	mov	r3, #16896
	add	r1, r1, #4
	add	r3, r3, #4
	tst	r2, #1
	moveq	r1, r3
.L45:
	mov	fp, fp, asl #3
	mvn	r3, #3088
	add	r2, r8, fp
	sub	r3, r3, #1
	strh	r1, [r8, fp]	@ movhi
	mov	r1, #220	@ movhi
	strh	r3, [r2, #4]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	sp, sp, #68
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L30:
	ldr	r3, [r4, #52]
	mov	r1, #12
	b	.L34
.L29:
	ldr	r2, [r4, #92]
	ldr	r3, [r4, #52]
	add	r1, r2, r2, asl #1
	rsb	r2, r2, r1, asl #3
	cmp	r3, #0
	movle	r1, #0
	movgt	r1, #1
	mul	r2, r1, r2
	cmp	r3, #8
	movgt	r1, #0
	movle	r1, #1
	mul	r1, r2, r1
	add	r1, r1, #2
	b	.L34
.L32:
	ldr	r3, [r4, #52]
	mov	r1, #22
	b	.L34
.L28:
	ldr	r3, [r4, #52]
	mov	r1, #0
	b	.L34
.L35:
	ldr	r3, [r3, #92]
	cmp	r3, #0
	moveq	lr, #512
	movne	lr, #0
	b	.L36
.L59:
	.align	2
.L58:
	.word	player
	.word	playerSpritesTiles
	.word	DMANow
	.word	1717986919
	.word	shadowOAM
	.word	enemies+40
	.word	.LANCHOR1
	.word	comboCount
	.word	__aeabi_idiv
	.word	stageColLimit
	.word	advanceTimer
	.word	1374389535
	.size	updateOAM, .-updateOAM
	.align	2
	.global	hideSprites
	.type	hideSprites, %function
hideSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L63
	mov	r3, #0
.L61:
	ldrh	r1, [r2, r3]
	orr	r1, r1, #512
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L61
	bx	lr
.L64:
	.align	2
.L63:
	.word	shadowOAM
	.size	hideSprites, .-hideSprites
	.align	2
	.global	setupSounds
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r2, #1264
	mov	r3, #67108864
	sub	r2, r2, #1
	mov	r1, #128	@ movhi
	strh	r1, [r3, #132]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	mov	r2, #0	@ movhi
	strh	r2, [r3, #128]	@ movhi
	bx	lr
	.size	setupSounds, .-setupSounds
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L67+8
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	ip, [ip, #0]
	mov	r8, r0
	mov	r5, #0
	mov	r4, #67108864
	add	ip, ip, #12
	mov	r6, r2
	add	fp, r4, #256
	add	r2, r4, #160
	mov	sl, r1
	mov	r9, r3
	mov	r1, r8
	mov	r0, #1
	mov	r3, #910163968
	str	r5, [ip, #8]
	ldr	ip, .L67+12
	mov	lr, pc
	bx	ip
	mov	r1, r6
	ldr	r3, .L67+16
	mov	r0, #16777216
	strh	r5, [fp, #2]	@ movhi
	mov	lr, pc
	bx	r3
	rsb	r2, r0, #0
	mov	r2, r2, asl #16
	ldr	r4, .L67+20
	mov	r2, r2, lsr #16
	strh	r2, [fp, #0]	@ movhi
	mov	r3, #1
	mov	r2, #128	@ movhi
	str	r8, [r4, #0]
	ldr	r7, .L67+24
	strh	r2, [fp, #2]	@ movhi
	mov	r0, sl
	str	r9, [r4, #20]
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	str	sl, [r4, #4]
	str	r6, [r4, #8]
	mov	lr, pc
	bx	r7
	adr	r3, .L67
	ldmia	r3, {r2-r3}
	ldr	ip, .L67+28
	mov	lr, pc
	bx	ip
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	ip, .L67+32
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	ip
	ldr	r3, .L67+36
	mov	lr, pc
	bx	r3
	str	r5, [r4, #32]
	str	r0, [r4, #24]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L68:
	.align	3
.L67:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundA
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	initGame
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	ldr	r0, .L72
	ldr	r3, .L72+4
	mov	lr, pc
	bx	r3
	mov	ip, #30720
	mov	r4, #67108864
	mov	lr, #4928	@ movhi
	add	ip, ip, #4
	mov	r2, #100663296
	ldr	r5, .L72+8
	strh	lr, [r4, #0]	@ movhi
	strh	ip, [r4, #10]	@ movhi
	mov	r0, #3
	ldr	r1, .L72+12
	add	r2, r2, #16384
	mov	r3, #1680
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L72+16
	add	r2, r2, #49152
	mov	r3, #2048
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L72+16
	add	r2, r2, #51200
	mov	r3, #2048
	mov	lr, pc
	bx	r5
	ldr	r7, .L72+20
	mov	ip, #23040	@ movhi
	mov	r0, #3
	ldr	r1, .L72+24
	mov	r2, #100663296
	mov	r3, #1488
	strh	ip, [r4, #8]	@ movhi
	mov	lr, pc
	bx	r5
	ldr	r0, .L72+28
	ldr	r1, [r7, #0]
	mov	r2, #1
	mov	r3, #26
	ldr	ip, .L72+32
	mov	lr, pc
	bx	ip
	mov	r6, #0
	mov	ip, #96
	mov	lr, #4928	@ movhi
	mov	r2, #100663296
	strh	r6, [r4, #16]	@ movhi
	strh	lr, [r4, #0]	@ movhi
	strh	ip, [r4, #18]	@ movhi
	mov	r0, #3
	str	r6, [r7, #8]
	ldr	r1, .L72+36
	strh	r6, [r4, #20]	@ movhi
	add	r2, r2, #65536
	str	ip, [r7, #12]
	mov	r3, #16384
	strh	r6, [r4, #22]	@ movhi
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r3, #3072
	mov	r0, #3
	ldr	r1, .L72+40
	add	r2, r2, #67584
	mov	lr, pc
	bx	r5
	ldr	r3, .L72+44
.L70:
	ldrh	r2, [r3, r6]
	orr	r2, r2, #512
	strh	r2, [r3, r6]	@ movhi
	add	r6, r6, #8
	cmp	r6, #1024
	bne	.L70
	ldr	r3, .L72+48
	mov	r2, #1
	str	r2, [r3, #0]
	mov	r2, #10
	str	r2, [r3, #8]
	mov	r2, #19
	mov	r4, #2
	str	r2, [r3, #16]
	mov	r2, #8
	str	r2, [r3, #20]
	str	r4, [r3, #4]
	str	r4, [r3, #12]
	ldr	r3, .L72+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L72+56
	mov	lr, pc
	bx	r3
	ldr	lr, .L72+60
	mov	r5, #256
	str	r5, [lr, #0]
	ldr	lr, .L72+64
	mov	ip, #0
	str	ip, [lr, #0]
	ldr	lr, .L72+68
	str	ip, [lr, #0]
	ldr	lr, .L72+72
	mov	r1, #211968
	str	ip, [lr, #0]
	ldr	lr, .L72+76
	add	r1, r1, #320
	mov	r2, #11008
	ldr	r0, .L72+80
	add	r1, r1, #3
	add	r2, r2, #17
	mov	r3, ip
	str	ip, [lr, #0]
	bl	playSoundA
	str	r4, [r7, #4]
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bx	lr
.L73:
	.align	2
.L72:
	.word	mainBackgroundPal
	.word	loadPalette
	.word	DMANow
	.word	mainBackgroundTiles
	.word	mainBackgroundMap
	.word	.LANCHOR0
	.word	gameBackgroundTiles
	.word	gameBackgroundMap
	.word	loadMap
	.word	effectsTiles
	.word	enemySpritesTiles
	.word	shadowOAM
	.word	comboCount
	.word	initPlayer
	.word	resetEnemies
	.word	stageColLimit
	.word	stageMinColLimit
	.word	phase
	.word	spawnEventNum
	.word	advanceTimer
	.word	gameM1
	.size	initGame, .-initGame
	.align	2
	.global	updateStart
	.type	updateStart, %function
updateStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L79
	ldr	r3, [r4, #0]
	tst	r3, #8
	beq	.L75
	ldr	r2, .L79+4
	ldr	r2, [r2, #0]
	tst	r2, #8
	beq	.L77
.L75:
	tst	r3, #4
	beq	.L76
	ldr	r3, .L79+4
	ldr	r3, [r3, #0]
	tst	r3, #4
	beq	.L78
.L76:
	ldr	r3, .L79+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L79+12
	ldr	r3, [r3, #8]
	add	r1, r3, r3, lsr #31
	mov	r1, r1, asl #15
	mov	r3, r3, asl #16
	mov	r2, #67108864
	mov	r3, r3, lsr #16
	mov	r1, r1, lsr #16
	strh	r3, [r2, #16]	@ movhi
	strh	r1, [r2, #20]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L78:
	bl	initInstructions
	b	.L76
.L77:
	bl	initGame
	bl	unpauseGame
	ldr	r3, [r4, #0]
	b	.L75
.L80:
	.align	2
.L79:
	.word	oldButtons
	.word	buttons
	.word	waitForVblank
	.word	.LANCHOR0
	.size	updateStart, .-updateStart
	.align	2
	.global	initStart
	.type	initStart, %function
initStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #256	@ movhi
	stmfd	sp!, {r4, r5, r6, lr}
	strh	r2, [r3, #0]	@ movhi
	mov	r2, #31488	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r0, .L84
	ldr	r3, .L84+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L84+8
	mov	r0, #3
	ldr	r1, .L84+12
	mov	r2, #100663296
	mov	r3, #3552
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	add	r2, r2, #55296
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L84+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L84+20
	mov	r3, #0
.L82:
	ldrh	r1, [r2, r3]
	orr	r1, r1, #512
	strh	r1, [r2, r3]	@ movhi
	add	r3, r3, #8
	cmp	r3, #1024
	bne	.L82
	ldr	r5, .L84+24
	mov	r1, #105472
	mov	r4, #0
	mov	r6, #67108864
	add	r1, r1, #452
	mov	r2, #11008
	strh	r4, [r6, #16]	@ movhi
	ldr	r0, .L84+28
	add	r1, r1, #3
	add	r2, r2, #17
	mov	r3, #1
	str	r4, [r5, #8]
	str	r4, [r5, #12]
	strh	r4, [r6, #18]	@ movhi
	str	r4, [r5, #4]
	bl	playSoundA
	strh	r4, [r6, #16]	@ movhi
	ldr	r3, .L84+32
	str	r4, [r5, #8]
	str	r4, [r5, #12]
	strh	r4, [r6, #18]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L84+36
	mov	lr, pc
	bx	r3
	str	r4, [r5, #4]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L85:
	.align	2
.L84:
	.word	startBackgroundPal
	.word	loadPalette
	.word	DMANow
	.word	startBackgroundTiles
	.word	startBackgroundMap
	.word	shadowOAM
	.word	.LANCHOR0
	.word	titleSong
	.word	initPlayer
	.word	resetEnemies
	.size	initStart, .-initStart
	.align	2
	.global	updateLose
	.type	updateLose, %function
updateLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L88
	ldr	r3, [r3, #0]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L88+4
	ldr	r3, [r3, #0]
	tst	r3, #8
	bxne	lr
	b	initStart
.L89:
	.align	2
.L88:
	.word	oldButtons
	.word	buttons
	.size	updateLose, .-updateLose
	.align	2
	.global	updatePause
	.type	updatePause, %function
updatePause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L97
	ldr	r3, [r4, #0]
	tst	r3, #8
	beq	.L91
	ldr	r2, .L97+4
	ldr	r2, [r2, #0]
	tst	r2, #8
	beq	.L94
.L91:
	mov	r2, #67108864
	ldr	r2, [r2, #304]
	tst	r2, #512
	bne	.L92
	tst	r3, #256
	bne	.L95
.L92:
	tst	r3, #4
	beq	.L90
	ldr	r3, .L97+4
	ldr	r3, [r3, #0]
	tst	r3, #4
	beq	.L96
.L90:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L95:
	ldr	r2, .L97+4
	ldr	r2, [r2, #0]
	tst	r2, #256
	bne	.L92
	ldr	r2, .L97+8
	ldr	r1, [r2, #104]
	rsbs	r1, r1, #1
	movcc	r1, #0
	cmp	r1, #0
	str	r1, [r2, #104]
	ldrne	r1, [r2, #88]
	strne	r1, [r2, #84]
	b	.L92
.L96:
	ldmfd	sp!, {r4, lr}
	b	initStart
.L94:
	bl	unpauseGame
	ldr	r3, [r4, #0]
	b	.L91
.L98:
	.align	2
.L97:
	.word	oldButtons
	.word	buttons
	.word	player
	.size	updatePause, .-updatePause
	.align	2
	.global	updateInstructions
	.type	updateInstructions, %function
updateInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r3, .L134
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	ldrne	r4, .L134+4
	ldr	r6, .L134+8
	movne	r3, #0
	strne	r3, [r4, #40]
	ldr	r3, [r6, #0]
	ldreq	r4, .L134+4
	tst	r3, #64
	beq	.L101
	ldr	r3, .L134+12
	ldr	r3, [r3, #0]
	tst	r3, #64
	moveq	r3, #30
	streq	r3, [r4, #76]
	moveq	r3, #4
	streq	r3, [r4, #40]
.L101:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #32
	bne	.L102
	ldr	r3, [r4, #40]
	cmp	r3, #1
	ldr	r2, .L134+4
	beq	.L129
	cmp	r3, #0
	cmpne	r3, #3
	mov	r3, #1
	str	r3, [r2, #48]
	moveq	r3, #3
	streq	r3, [r2, #40]
.L105:
	mvn	r3, #31
	str	r3, [r4, #32]
.L102:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #16
	bne	.L106
	ldr	r3, [r4, #40]
	cmp	r3, #1
	ldr	r2, .L134+4
	beq	.L130
	cmp	r3, #0
	cmpne	r3, #3
	mov	r3, #0
	str	r3, [r2, #48]
	moveq	r3, #3
	streq	r3, [r2, #40]
.L109:
	mov	r3, #32
	str	r3, [r4, #32]
.L106:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #2
	beq	.L131
.L110:
	ldr	r3, [r6, #0]
	tst	r3, #1
	beq	.L112
	ldr	r3, .L134+12
	ldr	r5, [r3, #0]
	ands	r5, r5, #1
	bne	.L112
	ldr	r3, .L134+16
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #40]
	cmp	r0, #0
	strne	r5, [r4, #32]
	cmp	r3, #4
	ldr	r3, .L134+4
	beq	.L112
	ldr	r1, [r3, #56]
	mov	r2, #1
	cmp	r1, #0
	mov	r1, #0
	str	r2, [r3, #40]
	str	r1, [r3, #32]
	streq	r2, [r3, #56]
.L112:
	ldr	r3, .L134+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L134+24
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #40]
	cmp	r3, #4
	ldrls	r2, .L134+28
	addls	r3, r2, r3, asl #2
	ldrls	r1, [r3, #40]
	ldr	r3, [r4, #52]
	movhi	r1, #0
	add	r1, r1, r3
	ldr	r3, .L134+32
	mov	r2, #100663296
	mov	r0, #3
	add	r1, r3, r1, asl #11
	add	r2, r2, #65536
	mov	r3, #1024
	ldr	r5, .L134+36
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #72]
	ldr	r1, .L134+40
	smull	r0, r1, r2, r1
	mov	r2, r2, asr #31
	rsb	r1, r2, r1, asr #1
	ldr	r3, [r4, #48]
	mov	r2, r1, lsr #31
	add	r1, r1, r2
	and	r1, r1, #1
	rsb	lr, r3, r3, asl #10
	ldr	r7, [r4, #4]
	rsb	r2, r2, r1
	add	lr, r3, lr, asl #2
	ldr	r0, [r4, #60]
	ldrb	sl, [r4, #0]	@ zero_extendqisi2
	cmp	r2, #1
	add	lr, r3, lr, asl #3
	ldr	ip, .L134+44
	add	lr, r7, lr, asl #1
	mvn	r8, r3, asl #30
	ldr	r7, [r4, #40]
	moveq	r4, #512
	movne	r4, #0
	mov	r0, r0, asl #3
	mvn	r8, r8, lsr #18
	mov	lr, lr, asl #23
	orr	r4, r4, sl
	add	r1, ip, r0
	orr	lr, r8, lr, lsr #23
	strh	r4, [ip, r0]	@ movhi
	sub	r2, r7, #1
	mov	r0, #13312	@ movhi
	strh	lr, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L126
.L121:
	.word	.L117
	.word	.L118
	.word	.L119
	.word	.L120
.L126:
	ldr	r4, .L134+48
.L116:
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L134+52
	add	r2, r2, #16384
	mov	r3, #16
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	mov	r1, r4
	add	r2, r2, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L134+44
	mov	r2, #117440512
	mov	lr, pc
	bx	r5
	ldr	r3, [r6, #0]
	tst	r3, #8
	beq	.L122
	ldr	r2, .L134+12
	ldr	r2, [r2, #0]
	tst	r2, #8
	beq	.L132
.L122:
	tst	r3, #4
	beq	.L99
	ldr	r3, .L134+12
	ldr	r3, [r3, #0]
	tst	r3, #4
	beq	.L133
.L99:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L119:
	ldr	r2, .L134+48
	rsb	r4, r3, #2
	add	r4, r2, r4, asl #11
	b	.L116
.L118:
	ldr	r2, .L134+48
	rsb	r4, r3, #8
	add	r4, r2, r4, asl #11
	b	.L116
.L117:
	ldr	r2, .L134+48
	rsb	r4, r3, #5
	add	r4, r2, r4, asl #11
	b	.L116
.L120:
	ldr	r2, .L134+48
	rsb	r4, r3, #11
	add	r4, r2, r4, asl #11
	b	.L116
.L131:
	ldr	r3, .L134+16
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	beq	.L110
	ldr	r3, [r4, #44]
	cmp	r3, #2
	mov	r3, #2
	str	r3, [r4, #40]
	ldrne	r3, .L134+4
	movne	r2, #0
	strne	r2, [r3, #52]
	mov	r3, #0
	str	r3, [r4, #32]
	b	.L110
.L133:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	b	initStart
.L129:
	ldr	r1, [r2, #52]
	cmp	r1, #1
	strle	r3, [r2, #48]
	b	.L105
.L130:
	ldr	r3, [r2, #52]
	cmp	r3, #1
	movle	r3, #0
	strle	r3, [r2, #48]
	b	.L109
.L132:
	bl	initGame
	bl	unpauseGame
	ldr	r3, .L134+8
	ldr	r3, [r3, #0]
	b	.L122
.L135:
	.align	2
.L134:
	.word	playerCheckShouldDemoIdle
	.word	player
	.word	oldButtons
	.word	buttons
	.word	playerCheckCanBlock
	.word	waitForVblank
	.word	demoAnimatePlayer
	.word	.LANCHOR1
	.word	playerSpritesTiles
	.word	DMANow
	.word	1717986919
	.word	shadowOAM
	.word	instructionsBackgroundMap
	.word	instructionsBackgroundTiles
	.size	updateInstructions, .-updateInstructions
	.align	2
	.global	updateWin
	.type	updateWin, %function
updateWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L141
	stmfd	sp!, {r4, lr}
	ldr	r2, .L141+4
	ldr	r1, [r3, #0]
	cmp	r1, r2
	beq	.L139
.L137:
	ldr	r3, .L141+8
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L136
	ldr	r3, .L141+12
	ldr	r3, [r3, #0]
	tst	r3, #8
	beq	.L140
.L136:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L140:
	ldmfd	sp!, {r4, lr}
	b	initStart
.L139:
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L137
	mov	r1, #421888
	add	r1, r1, #1424
	mov	r2, #11008
	ldr	r0, .L141+16
	add	r1, r1, #10
	add	r2, r2, #17
	mov	r3, #1
	bl	playSoundA
	b	.L137
.L142:
	.align	2
.L141:
	.word	soundA
	.word	gameM1
	.word	oldButtons
	.word	buttons
	.word	gameM2
	.size	updateWin, .-updateWin
	.align	2
	.global	playSoundB
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, .L145+8
	ldr	fp, [sp, #40]
	ldr	ip, [r4, #28]
	cmp	ip, fp
	mov	r7, r0
	mov	r8, r1
	mov	r6, r2
	mov	r9, r3
	bgt	.L143
	ldr	r3, .L145+12
	ldr	ip, [r3, #0]
	mov	r2, #67108864
	mov	sl, #0
	add	ip, ip, #24
	mov	r5, r2
	add	r5, r5, #256
	add	r2, r2, #164
	mov	r1, r7
	mov	r3, #910163968
	mov	r0, #2
	str	sl, [ip, #8]
	ldr	ip, .L145+16
	mov	lr, pc
	bx	ip
	mov	r1, r6
	strh	sl, [r5, #6]	@ movhi
	ldr	r3, .L145+20
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	rsb	r3, r0, #0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r5, #4]	@ movhi
	mov	r2, #128	@ movhi
	mov	r3, #1
	strh	r2, [r5, #6]	@ movhi
	mov	r0, r8
	ldr	r5, .L145+24
	stmia	r4, {r7, r8}	@ phole stm
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	str	r6, [r4, #8]
	str	r9, [r4, #20]
	str	sl, [r4, #32]
	mov	lr, pc
	bx	r5
	adr	r3, .L145
	ldmia	r3, {r2-r3}
	ldr	ip, .L145+28
	mov	lr, pc
	bx	ip
	mov	r7, r0
	mov	r0, r6
	mov	r8, r1
	mov	lr, pc
	bx	r5
	ldr	ip, .L145+32
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r8
	mov	lr, pc
	bx	ip
	ldr	r3, .L145+36
	mov	lr, pc
	bx	r3
	str	fp, [r4, #28]
	str	r0, [r4, #24]
.L143:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L146:
	.align	3
.L145:
	.word	1443109011
	.word	1078844686
	.word	soundB
	.word	dma
	.word	DMANow
	.word	__aeabi_idiv
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundB, .-playSoundB
	.align	2
	.global	interruptHandler
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r3, #67108864
	add	r3, r3, #512
	sub	sp, sp, #12
	ldrh	r2, [r3, #2]
	tst	r2, #1
	mov	r2, #0	@ movhi
	strh	r2, [r3, #8]	@ movhi
	beq	.L148
	ldr	r2, .L156
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L149
	ldr	r3, [r2, #32]
	ldr	r1, [r2, #24]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r2, #32]
	blt	.L149
	ldr	r3, [r2, #20]
	cmp	r3, #0
	bne	.L153
	ldr	r1, .L156+4
	ldr	r0, [r1, #0]
	mov	r1, #67108864
	add	r0, r0, #12
	add	r1, r1, #256
	str	r3, [r0, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #16]
	strh	r3, [r1, #2]	@ movhi
.L149:
	ldr	ip, .L156+8
	ldr	r3, [ip, #12]
	cmp	r3, #0
	bne	.L154
.L151:
	mov	r3, #67108864
	add	r3, r3, #512
	mov	r2, #1	@ movhi
	strh	r2, [r3, #2]	@ movhi
.L148:
	mov	r3, #67108864
	add	r3, r3, #512
	mov	r2, #1	@ movhi
	strh	r2, [r3, #8]	@ movhi
	add	sp, sp, #12
	ldr	lr, [sp], #4
	bx	lr
.L154:
	ldr	r3, [ip, #32]
	ldr	r2, [ip, #24]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [ip, #32]
	blt	.L151
	ldr	r3, [ip, #20]
	cmp	r3, #0
	bne	.L155
	ldr	r2, .L156+4
	ldr	r1, [r2, #0]
	mov	r2, #67108864
	add	r1, r1, #24
	add	r2, r2, #256
	str	r3, [r1, #8]
	str	r3, [ip, #12]
	str	r3, [ip, #16]
	str	r3, [ip, #28]
	strh	r3, [r2, #6]	@ movhi
	b	.L151
.L153:
	ldmia	r2, {r0, r1, r2}	@ phole ldm
	bl	playSoundA
	b	.L149
.L155:
	ldmia	ip, {r0, r1, r2}	@ phole ldm
	ldr	ip, [ip, #28]
	str	ip, [sp, #0]
	bl	playSoundB
	b	.L151
.L157:
	.align	2
.L156:
	.word	soundA
	.word	dma
	.word	soundB
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	pauseSound
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L159
	mov	r2, #0
	str	r2, [r1, #12]
	mov	r3, #67108864
	ldr	r1, .L159+4
	add	r3, r3, #256
	str	r2, [r1, #12]
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L160:
	.align	2
.L159:
	.word	soundA
	.word	soundB
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L162
	mov	r1, #1
	str	r1, [r0, #12]
	mov	r3, #67108864
	ldr	r0, .L162+4
	add	r3, r3, #256
	mov	r2, #128
	str	r1, [r0, #12]
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L163:
	.align	2
.L162:
	.word	soundA
	.word	soundB
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L165
	str	r4, [sp, #-4]!
	ldr	ip, [r3, #0]
	ldr	r0, .L165+4
	ldr	r1, .L165+8
	mov	r2, #67108864
	mov	r3, #0
	add	r2, r2, #256
	add	r4, ip, #12
	add	ip, ip, #24
	str	r3, [r0, #12]
	str	r3, [r1, #12]
	str	r3, [r0, #16]
	str	r3, [r1, #16]
	str	r3, [r4, #8]
	str	r3, [ip, #8]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	ldmfd	sp!, {r4}
	bx	lr
.L166:
	.align	2
.L165:
	.word	dma
	.word	soundA
	.word	soundB
	.size	stopSound, .-stopSound
	.align	2
	.global	initLose
	.type	initLose, %function
initLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r3, #512	@ movhi
	mov	r6, #67108864
	ldr	r0, .L168
	strh	r3, [r6, #0]	@ movhi
	ldr	r3, .L168+4
	mov	lr, pc
	bx	r3
	mov	ip, #6400
	add	ip, ip, #4
	mov	r5, #100663296
	strh	ip, [r6, #10]	@ movhi
	mov	r0, #3
	ldr	r1, .L168+8
	add	r2, r5, #16384
	mov	r3, #2080
	ldr	r4, .L168+12
	mov	lr, pc
	bx	r4
	add	r2, r5, #51200
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L168+16
	mov	lr, pc
	bx	r4
	bl	stopSound
	ldr	r3, .L168+20
	mov	r2, #5
	str	r2, [r3, #4]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L169:
	.align	2
.L168:
	.word	loseBackgroundPal
	.word	loadPalette
	.word	loseBackgroundTiles
	.word	DMANow
	.word	loseBackgroundMap
	.word	.LANCHOR0
	.size	initLose, .-initLose
	.align	2
	.global	initWin
	.type	initWin, %function
initWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r4, #67108864
	mov	r3, #768	@ movhi
	ldr	r0, .L171
	strh	r3, [r4, #0]	@ movhi
	ldr	r3, .L171+4
	mov	lr, pc
	bx	r3
	mov	r7, #6912
	mov	lr, #23040
	mov	ip, #0
	add	lr, lr, #5
	mov	r6, #100663296
	add	r7, r7, #3
	strh	ip, [r4, #16]	@ movhi
	ldr	r5, .L171+8
	strh	ip, [r4, #18]	@ movhi
	mov	r0, #3
	strh	ip, [r4, #20]	@ movhi
	ldr	r1, .L171+12
	strh	ip, [r4, #22]	@ movhi
	mov	r2, r6
	mov	r3, #2048
	strh	r7, [r4, #8]	@ movhi
	strh	lr, [r4, #10]	@ movhi
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L171+16
	add	r2, r6, #55296
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L171+20
	add	r2, r6, #16384
	mov	r3, #1168
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L171+24
	add	r2, r6, #53248
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	bl	stopSound
	mov	r1, #421888
	add	r1, r1, #1760
	mov	r2, #11008
	add	r2, r2, #17
	mov	r3, #1
	ldr	r0, .L171+28
	add	r1, r1, #9
	bl	playSoundA
	ldr	r3, .L171+32
	mov	r2, #4
	str	r2, [r3, #4]
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bx	lr
.L172:
	.align	2
.L171:
	.word	winBackgroundPal
	.word	loadPalette
	.word	DMANow
	.word	winBackgroundTiles
	.word	winBackgroundMap
	.word	winTextTiles
	.word	winTextMap
	.word	Ending
	.word	.LANCHOR0
	.size	initWin, .-initWin
	.align	2
	.global	updateGame
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r4, .L211
	ldr	r3, .L211+4
	ldr	r2, [r4, #0]
	cmp	r2, r3
	beq	.L201
.L174:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	bne	.L175
	ldr	r1, .L211
	mov	r2, #1
	str	r2, [r1, #12]
	ldr	r1, .L211+8
	mov	r3, #67108864
	str	r2, [r1, #12]
	add	r3, r3, #256
	mov	r2, #128	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #6]	@ movhi
.L175:
	ldr	r5, .L211+12
	ldr	r3, [r5, #0]
	tst	r3, #8
	beq	.L176
	ldr	r3, .L211+16
	ldr	r3, [r3, #0]
	ands	r3, r3, #8
	beq	.L202
.L176:
	ldr	r3, .L211+20
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	ldrne	r4, .L211+24
	movne	r3, #0
	strne	r3, [r4, #32]
	ldr	r3, .L211+28
	ldreq	r4, .L211+24
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r4, #40]
	ldr	r3, [r5, #0]
	tst	r3, #64
	beq	.L179
	ldr	r3, .L211+16
	ldr	r3, [r3, #0]
	tst	r3, #64
	beq	.L203
.L179:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #32
	bne	.L180
	ldr	r3, [r4, #40]
	cmp	r3, #1
	ldr	r2, .L211+24
	beq	.L204
	cmp	r3, #0
	cmpne	r3, #3
	mov	r3, #1
	str	r3, [r2, #48]
	moveq	r3, #3
	streq	r3, [r2, #40]
.L183:
	mvn	r3, #31
	str	r3, [r4, #32]
.L180:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #16
	bne	.L184
	ldr	r3, [r4, #40]
	cmp	r3, #1
	ldr	r2, .L211+24
	beq	.L205
	cmp	r3, #0
	cmpne	r3, #3
	mov	r3, #0
	str	r3, [r2, #48]
	moveq	r3, #3
	streq	r3, [r2, #40]
.L187:
	mov	r3, #32
	str	r3, [r4, #32]
.L184:
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #2
	beq	.L206
.L188:
	ldr	r3, [r5, #0]
	tst	r3, #1
	beq	.L190
	ldr	r3, .L211+16
	ldr	r5, [r3, #0]
	ands	r5, r5, #1
	beq	.L207
.L190:
	ldr	r3, .L211+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L211+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L211+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L211+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L211+48
	mov	lr, pc
	bx	r3
	ldr	r5, .L211+52
	ldr	r3, .L211+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L211+60
	mov	lr, pc
	bx	r3
	ldr	ip, [r5, #8]
	cmp	ip, #0
	add	r3, ip, #255
	movlt	ip, r3
	ldr	r3, .L211+64
	mov	ip, ip, asr #8
	mov	r1, ip
	ldr	r2, [r3, #0]
	ldr	r0, .L211+68
	mov	r3, #26
	str	ip, [r5, #0]
	ldr	ip, .L211+72
	mov	lr, pc
	bx	ip
	ldr	r0, [r4, #8]
	ldr	ip, [r4, #24]
	rsb	r0, r0, #1024
	ldrh	r1, [r5, #8]
	ldrh	r2, [r5, #12]
	add	r0, r0, #1
	mov	r3, #67108864
	cmp	r0, ip, asr #4
	strh	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	bge	.L191
	ldr	r3, .L211+76
	ldr	r2, [r3, #0]
	ldr	r3, .L211+80
	ldr	r3, [r3, r2, asl #2]
	cmp	r3, #1
	beq	.L208
.L191:
	ldr	r3, [r4, #64]
	cmp	r3, #0
	ble	.L209
.L192:
	ldr	r3, [r4, #96]
	cmp	r3, #179
	ldrgt	ip, .L211+84
	smullgt	r2, ip, r3, ip
	movgt	r2, r3, asr #31
	addgt	ip, ip, r3
	subgt	ip, r2, ip, asr #5
	addgt	ip, ip, #3
	addgt	ip, ip, ip, asl #1
	ldr	r2, [r4, #104]
	movgt	ip, ip, asl #1
	ldr	r1, [r4, #92]
	ldr	r0, [r4, #84]
	subgt	ip, ip, #6
	mvnle	ip, #5
	cmp	r2, #0
	moveq	r2, r1
	movne	r2, #0
	mla	r2, ip, r2, r0
	ldr	r0, [r4, #72]
	add	r3, r1, r3
	cmp	r0, #0
	subgt	r0, r0, #1
	cmp	r2, #0
	ldr	ip, .L211+24
	str	r2, [r4, #84]
	str	r0, [r4, #72]
	str	r3, [r4, #96]
	ble	.L210
.L194:
	ldr	r1, [r4, #88]
	cmp	r1, r2
	ldr	r3, .L211+24
	ble	.L195
	ldr	r3, [r3, #92]
	cmp	r3, #0
	bne	.L196
.L197:
	bl	animate
	bl	updateOAM
	mov	r0, #3
	ldr	r1, .L211+88
	mov	r2, #117440512
	mov	r3, #512
	ldr	ip, .L211+92
	mov	lr, pc
	bx	ip
	ldr	r3, .L211+96
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L195:
	mov	r2, #1
	str	r2, [r3, #92]
	mov	r2, #50
	str	r2, [r3, #16]
	str	r1, [r3, #84]
.L196:
	ldr	r3, [r4, #72]
	cmp	r3, #0
	ldrle	r2, .L211+24
	addle	r3, r3, #60
	strle	r3, [r2, #72]
	b	.L197
.L207:
	ldr	r3, .L211+100
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	beq	.L190
	ldr	r2, [r4, #56]
	cmp	r2, #0
	ldreq	r2, .L211+24
	mov	r3, #1
	str	r3, [r4, #40]
	str	r5, [r4, #32]
	streq	r3, [r2, #56]
	b	.L190
.L206:
	ldr	r3, .L211+104
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	beq	.L188
	ldr	r3, [r4, #44]
	cmp	r3, #2
	mov	r3, #2
	str	r3, [r4, #40]
	ldrne	r3, .L211+24
	movne	r2, #0
	strne	r2, [r3, #52]
	mov	r3, #0
	str	r3, [r4, #32]
	b	.L188
.L210:
	cmp	r1, #0
	beq	.L194
	mov	r2, #0
	mov	r3, #30
	str	r2, [ip, #92]
	str	r2, [ip, #84]
	str	r3, [ip, #16]
	str	r2, [ip, #72]
	str	r2, [ip, #96]
	b	.L194
.L202:
	ldr	r1, .L211+8
	mov	r2, #67108864
	add	r2, r2, #256
	str	r3, [r4, #12]
	str	r3, [r1, #12]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	bl	initPause
	b	.L176
.L203:
	ldr	r3, .L211+108
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	ldrne	r3, [r4, #28]
	subne	r3, r3, #84
	strne	r3, [r4, #28]
	movne	r3, #4
	strne	r3, [r4, #40]
	b	.L179
.L205:
	ldr	r3, [r2, #52]
	cmp	r3, #1
	movle	r3, #0
	strle	r3, [r2, #48]
	b	.L187
.L204:
	ldr	r1, [r2, #52]
	cmp	r1, #1
	strle	r3, [r2, #48]
	b	.L183
.L208:
	bl	initWin
	b	.L191
.L201:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L174
	mov	r1, #421888
	add	r1, r1, #1424
	mov	r2, #11008
	ldr	r0, .L211+112
	add	r1, r1, #10
	add	r2, r2, #17
	mov	r3, #1
	bl	playSoundA
	b	.L174
.L209:
	bl	initLose
	b	.L192
.L212:
	.align	2
.L211:
	.word	soundA
	.word	gameM1
	.word	soundB
	.word	oldButtons
	.word	buttons
	.word	playerCheckShouldStandStill
	.word	player
	.word	playerCheckShouldIdle
	.word	gameDirector
	.word	enemiesDoAI
	.word	enemiesMove
	.word	playerAttack
	.word	playerMove
	.word	.LANCHOR0
	.word	updatePlayerScreenPosition
	.word	updateEnemiesScreenPosition
	.word	.LANCHOR2
	.word	gameBackgroundMap
	.word	loadMap
	.word	phase
	.word	enemiesLeft
	.word	-2004318071
	.word	shadowOAM
	.word	DMANow
	.word	waitForVblank
	.word	playerCheckCanAttack
	.word	playerCheckCanBlock
	.word	playerCheckCanJump
	.word	gameM2
	.size	updateGame, .-updateGame
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r3, #67108864
	add	r3, r3, #512
	ldrh	r1, [r3, #0]
	ldr	r0, .L226
	mov	r2, #50331648
	add	r2, r2, #28672
	orr	r1, r1, #1
	str	r0, [r2, #4092]
	strh	r1, [r3, #0]	@ movhi
	mov	r5, #67108864
	ldrh	r1, [r5, #4]
	orr	r1, r1, #8
	strh	r1, [r5, #4]	@ movhi
	mvn	r2, #1264
	mov	r1, #1	@ movhi
	strh	r1, [r3, #8]	@ movhi
	sub	r2, r2, #1
	mov	r1, #0	@ movhi
	mov	r3, #128	@ movhi
	strh	r3, [r5, #132]	@ movhi
	strh	r1, [r5, #128]	@ movhi
	strh	r2, [r5, #130]	@ movhi
	ldr	r3, .L226+4
	mov	lr, pc
	bx	r3
	bl	initStart
	ldr	r4, .L226+8
	ldr	r7, .L226+12
	ldr	r6, .L226+16
.L225:
	ldr	r3, [r4, #0]
	ldr	r2, [r7, #4]
.L215:
	str	r3, [r6, #0]
	ldr	r3, [r5, #304]
	str	r3, [r4, #0]
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L215
.L222:
	.word	.L216
	.word	.L217
	.word	.L218
	.word	.L219
	.word	.L220
	.word	.L221
.L221:
	bl	updateLose
	b	.L225
.L220:
	bl	updateWin
	b	.L225
.L219:
	bl	updatePause
	b	.L225
.L218:
	bl	updateGame
	b	.L225
.L217:
	bl	updateInstructions
	b	.L225
.L216:
	bl	updateStart
	b	.L225
.L227:
	.align	2
.L226:
	.word	interruptHandler
	.word	initSounds
	.word	buttons
	.word	.LANCHOR0
	.word	oldButtons
	.size	main, .-main
	.align	2
	.global	setupInterrupts
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
	add	r3, r2, #512
	str	r4, [sp, #-4]!
	ldrh	r0, [r2, #4]
	ldrh	ip, [r3, #0]
	mov	r1, #50331648
	ldr	r4, .L229
	add	r1, r1, #28672
	orr	ip, ip, #1
	orr	r0, r0, #8
	str	r4, [r1, #4092]
	strh	ip, [r3, #0]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	mov	r2, #1	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldmfd	sp!, {r4}
	bx	lr
.L230:
	.align	2
.L229:
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.global	sbbWidth
	.global	sbbX
	.global	sbbY
	.global	state
	.global	hOff
	.global	vOff
	.global	measure
	.comm	oldButtons,4,4
	.comm	buttons,4,4
	.comm	sbbHeight,4,4
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
	.comm	enemiesLeft,20,4
	.comm	spawnEventList,48,4
	.comm	spawnEventNum,4,4
	.comm	phase,4,4
	.comm	stageComplete,4,4
	.comm	hCamOff,4,4
	.comm	vCamOff,4,4
	.comm	shadowOAM,1024,4
	.comm	spaceSound,4,4
	.comm	scanLineCounter,2,2
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	CSWTCH.56, %object
	.size	CSWTCH.56, 20
CSWTCH.56:
	.word	0
	.word	2
	.word	12
	.word	16
	.word	22
	.type	CSWTCH.53, %object
	.size	CSWTCH.53, 20
CSWTCH.53:
	.word	0
	.word	1
	.word	5
	.word	5
	.word	8
	.type	CSWTCH.59, %object
	.size	CSWTCH.59, 20
CSWTCH.59:
	.word	0
	.word	2
	.word	12
	.word	16
	.word	22
	.data
	.align	2
	.set	.LANCHOR2,. + 0
	.type	sbbWidth, %object
	.size	sbbWidth, 4
sbbWidth:
	.word	4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	sbbX, %object
	.size	sbbX, 4
sbbX:
	.space	4
	.type	state, %object
	.size	state, 4
state:
	.space	4
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.type	sbbY, %object
	.size	sbbY, 4
sbbY:
	.space	4
	.type	measure, %object
	.size	measure, 4
measure:
	.space	4
	.ident	"GCC: (devkitARM release 31) 4.5.0"
