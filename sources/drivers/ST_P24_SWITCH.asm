@;
.syntax unified	@;to allow thumb-2 instruction set
.thumb						@; Use thmb instructions only
.data
.text
.align 4

.global ST_P24SWITCH_init
.thumb_func
ST_P24SWITCH_init:
	movw	r2, #14384	@; 0x3830
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #2
	str	r1, [r2, #0]
	movw	r2, #14384	@; 0x3830
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #4
	str	r1, [r2, #0]
	movw	r2, #14384	@; 0x3830
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #8
	str	r1, [r2, #0]
	movw	r2, #1024	@; 0x400
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #786432	@; 0xc0000
	str	r1, [r2, #0]
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #262144	@; 0x40000
	str	r1, [r2, #0]
	ldr	r1, [r2, #4]
	bic.w	r1, r1, #512	@; 0x200
	str	r1, [r2, #4]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #786432	@; 0xc0000
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #524288	@; 0x80000
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #786432	@; 0xc0000
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #262144	@; 0x40000
	str	r1, [r2, #12]
	movw	r2, #1024	@; 0x400
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #3
	str	r1, [r2, #0]
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
	movw	r2, #3072	@; 0xc00
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #48	@; 0x30
	str	r1, [r2, #0]
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
	movw	r2, #1024	@; 0x400
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #12
	str	r1, [r2, #0]
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
	movw	r2, #1024	@; 0x400
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #12288	@; 0x3000
	str	r1, [r2, #0]
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
	bic.w	r1, r1, #3145728	@; 0x300000
	str	r1, [r2, #0]
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #1048576	@; 0x100000
	str	r1, [r2, #0]
	ldr	r1, [r2, #4]
	bic.w	r1, r1, #1024	@; 0x400
	str	r1, [r2, #4]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #3145728	@; 0x300000
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #2097152	@; 0x200000
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #3145728	@; 0x300000
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #1048576	@; 0x100000
	str	r1, [r2, #12]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #12582912	@; 0xc00000
	str	r1, [r2, #0]
	ldr	r1, [r2, #0]
	orr.w	r1, r1, #4194304	@; 0x400000
	str	r1, [r2, #0]
	ldr	r1, [r2, #4]
	bic.w	r1, r1, #2048	@; 0x800
	str	r1, [r2, #4]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #12582912	@; 0xc00000
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #8388608	@; 0x800000
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #12582912	@; 0xc00000
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #4194304	@; 0x400000
	str	r1, [r2, #12]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #50331648	@; 0x3000000
	str	r1, [r2, #0]
	ldr	r1, [r2, #8]
	bic.w	r1, r1, #50331648	@; 0x3000000
	str	r1, [r2, #8]
	ldr	r1, [r2, #8]
	orr.w	r1, r1, #33554432	@; 0x2000000
	str	r1, [r2, #8]
	ldr	r1, [r2, #12]
	bic.w	r1, r1, #50331648	@; 0x3000000
	str	r1, [r2, #12]
	ldr	r1, [r2, #12]
	orr.w	r1, r1, #16777216	@; 0x1000000
	str	r1, [r2, #12]
	movw	r2, #1024	@; 0x400
	movt	r2, #16386	@; 0x4002
	ldr	r1, [r2, #0]
	bic.w	r1, r1, #3072	@; 0xc00
	str	r1, [r2, #0]
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
	movw	r2, #1024	@; 0x400
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #512	@; 0x200
	str	r1, [r2, #24]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #1024	@; 0x400
	str	r1, [r2, #24]
	movw	r2, #2048	@; 0x800
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #2048	@; 0x800
	str	r1, [r2, #24]
	bx	lr

.global ST_P24_GetSwitch
.thumb_func
ST_P24_GetSwitch:
