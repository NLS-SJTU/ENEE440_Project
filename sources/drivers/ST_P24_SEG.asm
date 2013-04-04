.syntax unified	@;to allow thumb-2 instruction set
.thumb						@; Use thmb instructions only
.data
.bss
.text
.global ST_P24DISPLAY_init
.thumb_func
ST_P24DISPLAY_init:
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
	
.global wrCATHODE_0
.thumb_func
wrCATHODE_0:
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #262144	@; 0x40000
	str	r1, [r2, #24]
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #65536	@; 0x10000
	str	r1, [r2, #24]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #524288	@; 0x80000
	str	r1, [r2, #24]
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #8388608	@; 0x800000
	str	r1, [r2, #24]
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #1048576	@; 0x100000
	str	r1, [r2, #24]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #65536	@; 0x10000
	str	r1, [r2, #24]
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #2
	str	r1, [r2, #24]
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #32
	str	r1, [r2, #24]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #2097152	@; 0x200000
	str	r1, [r2, #24]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #32
	str	r1, [r2, #24]
	bx	lr
	
.global printHEX
.thumb_func
printHEX:
	nop
	and.w	r0, r0, #15
	mov.w	r0, r0, lsl #2
	add	r2, pc, #4	@; (adr r2, 800068c <printHEX_dispatch_table>)
	ldr.w	pc, [r2, r0]
printHEX_dispatch_table:
.word	0x080006cd
.word	0x0800075b
.word	0x080007e9
.word	0x08000877
.word	0x08000905
.word	0x08000993
.word	0x08000a21
.word	0x08000aaf
.word	0x08000b3d
.word	0x08000bcb
.word	0x08000c59
.word	0x08000ce7
.word	0x08000d75
.word	0x08000e03
.word	0x08000e91
.word	0x08000f1f


.global enabDIGIT_1
.thumb_func
enabDIGIT_1:
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #128	@; 0x80
	str	r1, [r2, #24]
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #16
	str	r1, [r2, #24]
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #32
	str	r1, [r2, #24]
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #1
	str	r1, [r2, #24]
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #2
	str	r1, [r2, #24]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #8
	str	r1, [r2, #24]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #1
	str	r1, [r2, #24]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #262144	@; 0x40000
	str	r1, [r2, #24]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #1048576	@; 0x100000
	str	r1, [r2, #24]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #16
	str	r1, [r2, #24]
	bx	lr

.global displayEnab
.thumb_func
displayEnab:
	movw	r2, #0
 	movt	r2, #16386	@; 0x4002
 	mov.w	r1, #128	@; 0x80
 	str	r1, [r2, #24]
 	movw	r2, #0
 	movt	r2, #16386	@; 0x4002
 	mov.w	r1, #16
 	str	r1, [r2, #24]
 	movw	r2, #0
 	movt	r2, #16386	@; 0x4002
 	mov.w	r1, #32
 	str	r1, [r2, #24]
 	movw	r2, #0
 	movt	r2, #16386	@; 0x4002
 	mov.w	r1, #1
 	str	r1, [r2, #24]
 	movw	r2, #0
 	movt	r2, #16386	@; 0x4002
 	mov.w	r1, #2
 	str	r1, [r2, #24]
 	movw	r2, #2048	@; 0x800
 	movt	r2, #16386	@; 0x4002
 	mov.w	r1, #8
 	str	r1, [r2, #24]
 	movw	r2, #2048	@; 0x800
 	movt	r2, #16386	@; 0x4002
 	mov.w	r1, #1
 	str	r1, [r2, #24]
 	movw	r2, #2048	@; 0x800
 	movt	r2, #16386	@; 0x4002
 	mov.w	r1, #262144	@; 0x40000
 	str	r1, [r2, #24]
 	movw	r2, #2048	@; 0x800
 	movt	r2, #16386	@; 0x4002
 	mov.w	r1, #1048576	@; 0x100000
 	str	r1, [r2, #24]
 	movw	r2, #2048	@; 0x800
 	movt	r2, #16386	@; 0x4002
 	mov.w	r1, #16
 	str	r1, [r2, #24]
 	bx	lr

.global DISPLAY_on
.thumb_func
DISPLAY_on:
	movw	r2, #0
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #4194304	@; 0x400000
	str	r1, [r2, #24]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #131072	@; 0x20000
	str	r1, [r2, #24]
	bx	lr