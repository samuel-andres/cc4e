#NO_APP
	.text
	.even
	.globl	_sumList
_sumList:
	link.w %fp,#0
	move.l 8(%fp),%a0
	moveq #0,%d0
	cmp.w #0,%a0
	jeq .L2
.L3:
	add.l (%a0),%d0
	move.l 8(%a0),%a0
	cmp.w #0,%a0
	jne .L3
.L2:
	unlk %fp
	rts
.LC0:
	.ascii "Initializing list [-]\0"
.LC1:
	.ascii "%c%c%c]\0"
.LC2:
	.ascii "\12\12Timing...\0"
.LC3:
	.ascii "List %ld ticks, sum %d\12\0"
.LC4:
	.ascii "Average time: %f ticks\12\0"
	.even
	.globl	_main
_main:
	link.w %fp,#0
	movem.l #15932,-(%sp)
	jsr ___main
	pea .LC0
	lea _printf,%a4
	jsr (%a4)
	addq.l #4,%sp
	moveq #0,%d2
	moveq #0,%d3
	lea ___modsi3,%a3
	move.l #_calloc,%d4
	lea _random,%a5
	move.l #___divsi3,%d6
	move.l #_fflush,%d5
	pea 100.w
	move.l %d2,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	tst.l %d0
	jeq .L19
.L9:
	pea 12.w
	pea 1.w
	move.l %d4,%a0
	jsr (%a0)
	move.l %d0,%a2
	jsr (%a5)
	pea 100.w
	move.l %d0,-(%sp)
	jsr (%a3)
	move.l %d0,(%a2)
	move.l %d3,8(%a2)
	addq.l #1,%d2
	lea (16,%sp),%sp
	cmp.l #125000,%d2
	jeq .L20
.L15:
	move.l %a2,%d3
	pea 100.w
	move.l %d2,-(%sp)
	jsr (%a3)
	addq.l #8,%sp
	tst.l %d0
	jne .L9
.L19:
	pea 100.w
	move.l %d2,-(%sp)
	move.l %d6,%a0
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
	jsr (%a4)
	move.l _stdout,-(%sp)
	move.l %d5,%a0
	jsr (%a0)
	lea (20,%sp),%sp
	pea 12.w
	pea 1.w
	move.l %d4,%a0
	jsr (%a0)
	move.l %d0,%a2
	jsr (%a5)
	pea 100.w
	move.l %d0,-(%sp)
	jsr (%a3)
	move.l %d0,(%a2)
	move.l %d3,8(%a2)
	addq.l #1,%d2
	lea (16,%sp),%sp
	cmp.l #125000,%d2
	jne .L15
.L20:
	pea .LC2
	jsr _puts
	addq.l #4,%sp
	moveq #100,%d3
	moveq #0,%d5
	lea _clock,%a3
.L12:
	jsr (%a3)
	move.l %d0,%d4
	move.l %a2,%a0
	moveq #0,%d2
.L11:
	add.l (%a0),%d2
	move.l 8(%a0),%a0
	cmp.w #0,%a0
	jne .L11
	jsr (%a3)
	sub.l %d4,%d0
	add.l %d0,%d5
	move.l %d2,-(%sp)
	move.l %d0,-(%sp)
	pea .LC3
	jsr (%a4)
	subq.l #1,%d3
	lea (12,%sp),%sp
	jne .L12
	move.l %d5,-(%sp)
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
	jcc .L13
	addq.l #1,%d0
	move.l %d0,4(%a0)
	movem.l -36(%fp),#15484
	unlk %fp
	rts
.L13:
	move.l %a0,8(%fp)
	movem.l -36(%fp),#15484
	unlk %fp
	jra ___fillbf
	.globl	_progress
.LC5:
	.ascii "-\\|/\0"
	.data
	.even
_progress:
	.long	.LC5
