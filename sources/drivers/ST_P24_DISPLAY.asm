.syntax unified	@;to allow thumb-2 instruction set
.thumb						@; Use thmb instructions only
.data
.bss
.text
.global ST_P24_DisplayIni
.thumb_func
ST_P24_DisplayIni:
	movw	r2, #14384	@; 0x3830
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #1
	str	r1, [r2, #0]
	movw	r2, #14384	@; 0x3830
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #4
	str	r1, [r2, #0]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #768	@; 0x300
	str	r1, [r2, #0]
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #256	@; 0x100
	str	r1, [r2, #0]
	ldr	r1, [r2, #4]
	bic.w	r1, r1, #16
	str	r1, [r2, #4]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #768	@; 0x300
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #512	@; 0x200
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #768	@; 0x300
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #256	@; 0x100
	str	r1, [r2, #12]
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #12288	@; 0x3000
	str	r1, [r2, #0]
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #4096	@; 0x1000
	str	r1, [r2, #0]
	ldr	r1, [r2, #4]
	bic.w	r1, r1, #64	@; 0x40
	str	r1, [r2, #4]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #12288	@; 0x3000
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #8192	@; 0x2000
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #12288	@; 0x3000
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #4096	@; 0x1000
	str	r1, [r2, #12]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #3072	@; 0xc00
	str	r1, [r2, #0]
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #1024	@; 0x400
	str	r1, [r2, #0]
	ldr	r1, [r2, #4]
	bic.w	r1, r1, #32
	str	r1, [r2, #4]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #3072	@; 0xc00
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #2048	@; 0x800
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #3072	@; 0xc00
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #1024	@; 0x400
	str	r1, [r2, #12]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #12
	str	r1, [r2, #0]
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #4
	str	r1, [r2, #0]
	ldr	r1, [r2, #4]
	bic.w	r1, r1, #2
	str	r1, [r2, #4]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #12
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #8
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #12
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #4
	str	r1, [r2, #12]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #48	@; 0x30
	str	r1, [r2, #0]
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #16
	str	r1, [r2, #0]
	ldr	r1, [r2, #4]
	bic.w	r1, r1, #4
	str	r1, [r2, #4]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #48	@; 0x30
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #32
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #48	@; 0x30
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #16
	str	r1, [r2, #12]
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #3
	str	r1, [r2, #0]
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #1
	str	r1, [r2, #0]
	ldr	r1, [r2, #4]
	bic.w	r1, r1, #1
	str	r1, [r2, #4]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #3
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #2
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #3
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #1
	str	r1, [r2, #12]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #192	@; 0xc0
	str	r1, [r2, #0]
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #64	@; 0x40
	str	r1, [r2, #0]
	ldr	r1, [r2, #4]
	bic.w	r1, r1, #8
	str	r1, [r2, #4]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #192	@; 0xc0
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #128	@; 0x80
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #192	@; 0xc0
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #64	@; 0x40
	str	r1, [r2, #12]
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #49152	@; 0xc000
	str	r1, [r2, #0]
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #16384	@; 0x4000
	str	r1, [r2, #0]
	ldr	r1, [r2, #4]
	bic.w	r1, r1, #128	@; 0x80
	str	r1, [r2, #4]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #49152	@; 0xc000
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #32768	@; 0x8000
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #49152	@; 0xc000
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #16384	@; 0x4000
	str	r1, [r2, #12]
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #768	@; 0x300
	str	r1, [r2, #0]
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #256	@; 0x100
	str	r1, [r2, #0]
	ldr	r1, [r2, #4]
	bic.w	r1, r1, #16
	str	r1, [r2, #4]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #768	@; 0x300
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #512	@; 0x200
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #768	@; 0x300
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #256	@; 0x100
	str	r1, [r2, #12]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #3
	str	r1, [r2, #0]
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #1
	str	r1, [r2, #0]
	ldr	r1, [r2, #4]
	bic.w	r1, r1, #1
	str	r1, [r2, #4]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #3
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #2
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #3
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #1
	str	r1, [r2, #12]
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #12
	str	r1, [r2, #0]
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #4
	str	r1, [r2, #0]
	ldr	r1, [r2, #4]
	bic.w	r1, r1, #2
	str	r1, [r2, #4]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #12
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #8
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #12
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #4
	str	r1, [r2, #12]
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #3072	@; 0xc00
	str	r1, [r2, #0]
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #1024	@; 0x400
	str	r1, [r2, #0]
	ldr	r1, [r2, #4]
	bic.w	r1, r1, #32
	str	r1, [r2, #4]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #3072	@; 0xc00
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #2048	@; 0x800
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #3072	@; 0xc00
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #1024	@; 0x400
	str	r1, [r2, #12]
	bx	lr

	
.global ST_P24_Display_On
.thumb_func
ST_P24_Display_On:
	push	{r7, lr}
	add	r7, sp, #0

	mov.w	r0, #6
	mov.w	r1, #0
	bl	Set_PortA_Bit
	
	mov.w	r0, #1
	mov.w	r1, #0
	bl	Set_PortC_Bit
	pop	{r7, pc}
	nop
	
.global ST_P24_Display_Off
.thumb_func
ST_P24_Display_Off:
	ldr		r2, =0x40020000
    ldr		r1, =0x00000040
    str	r1, [r2, #24]				@; a6 1
    ldr		r2, =0x40020800
    mov.w	r1, #2
    str	r1, [r2, #24]				@; c1 1
    bx	lr




.global ST_P24_DisplayUpdate
.thumb_func
ST_P24_DisplayUpdate:
	bx	lr
	
.global wrCATHODE_0
.thumb_func
wrCATHODE_0:
	bx	lr
	
.global printHEX
.thumb_func
printHEX:
	bx lr


.global enabDIGIT_1
.thumb_func
enabDIGIT_1:

	bx	lr

.global displayEnab
.thumb_func
displayEnab:

 	bx	lr

.global DISPLAY_on
.thumb_func
DISPLAY_on:
	bx	lr
	