	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"archivo.c"
	.text
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}
	ldr	r0, .L4
	bl	printf
	add	r1, sp, #4
	ldr	r0, .L4+4
	bl	__isoc99_scanf
	ldr	r3, [sp, #4]
	cmp	r3, #10
	ble	.L2
	ldr	r0, .L4+8
	bl	puts
.L2:
	ldr	r0, .L4+12
	bl	printf
	mov	r0, #0
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L5:
	.align	2
.L4:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"Ingrese un n\303\272mero: \000"
.LC1:
	.ascii	"%d\000"
.LC2:
	.ascii	"El n\303\272mero es mayor a 10 \000"
.LC3:
	.ascii	"Gracias por participar:)\000"
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
