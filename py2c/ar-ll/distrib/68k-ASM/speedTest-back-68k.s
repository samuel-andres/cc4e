#NO_APP
	.text
	.even
	.globl	_sumArray
_sumArray:
	link.w %fp,#0
	move.l 12(%fp),%d1
	subq.l #1,%d1
	jmi .L4
	move.l %d1,%d0
	lsl.l #3,%d0
	move.l 8(%fp),%a0
	add.l %d0,%a0
	moveq #0,%d0
.L3:
	add.l (%a0),%d0
	subq.l #8,%a0
	dbra %d1,.L3
	clr.w %d1
	subq.l #1,%d1
	jcc .L3
	unlk %fp
	rts
.L4:
	moveq #0,%d0
	unlk %fp
	rts
.LC0:
	.ascii "Initializing array [-]\0"
.LC1:
	.ascii "%c%c%c]\0"
.LC2:
	.ascii "\12\12Timing...\0"
.LC3:
	.ascii "Array %ld ticks,sum %d\12\0"
.LC4:
	.ascii "Average time: %f ticks\12\0"
	.even
	.globl	_main
_main:
	link.w %fp,#0
	movem.l #15420,-(%sp)
	jsr ___main
	pea .LC0
	lea _printf,%a5
	jsr (%a5)
	move.l #1000000,-(%sp)
	pea 1.w
	jsr _calloc
	move.l %d0,%d4
	move.l %d0,%a3
	lea (12,%sp),%sp
	moveq #0,%d2
	lea ___modsi3,%a2
	lea _random,%a4
	move.l #___divsi3,%d5
	move.l #_fflush,%d3
.L10:
	pea 100.w
	move.l %d2,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	tst.l %d0
	jeq .L21
	jsr (%a4)
	pea 100.w
	move.l %d0,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,(%a3)
	addq.l #1,%d2
	addq.l #8,%a3
	cmp.l #125000,%d2
	jne .L10
.L22:
	pea .LC2
	jsr _puts
	addq.l #4,%sp
	moveq #0,%d2
.L11:
	jsr (%a4)
	pea 100.w
	move.l %d0,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d4,%a0
	move.l %d0,(%a0,%d2.l)
	addq.l #8,%d2
	cmp.l #1000000,%d2
	jne .L11
	moveq #100,%d3
	sub.l %a2,%a2
	lea _clock,%a3
	add.l #999992,%d4
.L13:
	jsr (%a3)
	move.l %d0,%a4
	move.l %d4,%a0
	moveq #0,%d2
	move.l #124999,%d0
.L12:
	add.l (%a0),%d2
	subq.l #8,%a0
	dbra %d0,.L12
	clr.w %d0
	subq.l #1,%d0
	jcc .L12
	jsr (%a3)
	sub.l %a4,%d0
	add.l %d0,%a2
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	pea .LC3
	jsr (%a5)
	subq.l #1,%d3
	lea (12,%sp),%sp
	jne .L13
	move.l %a2,-(%sp)
	jsr ___floatsidf
	clr.l (%sp)
	move.l #1079574528,-(%sp)
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	jsr ___divdf3
	lea (12,%sp),%sp
	move.l %d1,(%sp)
	move.l %d0,-(%sp)
	pea .LC4
	jsr _printf
	move.l _stdin,%a0
	move.l 4(%a0),%d0
	lea (12,%sp),%sp
	cmp.l 8(%a0),%d0
	jcc .L14
	addq.l #1,%d0
	move.l %d0,4(%a0)
	movem.l -32(%fp),#15420
	unlk %fp
	rts
.L21:
	pea 100.w
	move.l %d2,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	addq.l #8,%sp
	moveq #3,%d1
	and.l %d1,%d0
	move.l _progress,%a0
	move.b (%a0,%d0.l),%d0
	ext.w %d0
	move.w %d0,%a0
	move.l %a0,-(%sp)
	pea 8.w
	pea 8.w
	pea .LC1
	jsr (%a5)
	move.l _stdout,-(%sp)
	move.l %d3,%a0
	jsr (%a0)
	lea (20,%sp),%sp
	jsr (%a4)
	pea 100.w
	move.l %d0,-(%sp)
	jsr (%a2)
	addq.l #8,%sp
	move.l %d0,(%a3)
	addq.l #1,%d2
	addq.l #8,%a3
	cmp.l #125000,%d2
	jne .L10
	jra .L22
.L14:
	move.l %a0,8(%fp)
	movem.l -32(%fp),#15420
	unlk %fp
	jra ___fillbf
	.globl	_progress
.LC5:
	.ascii "-\\|/\0"
	.data
	.even
_progress:
	.long	.LC5
