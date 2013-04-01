@;
.syntax unified	@;to allow thumb-2 instruction set
.thumb						@; Use thmb instructions only
.data
.text
.align 4

.global ST_LED0_On			@; make this function visible everywhere
.thumb_func 			@; identify target type to linker
ST_LED0_On:
	movw	r2, #3072	@; 0xc00
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #4096	@; 0x1000
	str	r1, [r2, #24]
	bx	lr

.global ST_LED1_On			@; make this function visible everywhere
.thumb_func 			@; identify target type to linker
ST_LED1_On:
	movw	r2, #3072	@; 0xc00
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #0x2000	@; 0x1000
	str	r1, [r2, #24]
	bx	lr

.global ST_LED2_On			@; make this function visible everywhere
.thumb_func 			@; identify target type to linker
ST_LED2_On:
	movw	r2, #3072	@; 0xc00
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #0x4000	@; 0x1000
	str	r1, [r2, #24]
	bx	lr

.global ST_LED3_On			@; make this function visible everywhere
.thumb_func 			@; identify target type to linker
ST_LED3_On:
	movw	r2, #3072	@; 0xc00
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #0x8000	@; 0x8000
	str	r1, [r2, #24]
	bx	lr

.global ST_LED0_Off			@; make this function visible everywhere
.thumb_func 			@; identify target type to linker
ST_LED0_Off:
	movw	r2, #3072	@; 0xc00
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #268435456	@; 0x8000
	str	r1, [r2, #24]
	bx	lr
	
.global ST_LED1_Off			@; make this function visible everywhere
.thumb_func 			@; identify target type to linker
ST_LED1_Off:
	movw	r2, #3072	@; 0xc00
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #536870912	@; 0x8000
	str	r1, [r2, #24]
	bx	lr
	
.global ST_LED2_Off			@; make this function visible everywhere
.thumb_func 			@; identify target type to linker
ST_LED2_Off:
	movw	r2, #3072	@; 0xc00
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #1073741824	@; 0x8000
	str	r1, [r2, #24]
	bx	lr	

.global ST_LED3_Off			@; make this function visible everywhere
.thumb_func 			@; identify target type to linker
ST_LED3_Off:
	movw	r2, #3072	@; 0xc00
	movt	r2, #16386	@; 0x4002
	mov.w	r1, #2147483648	@; 0x8000
	str	r1, [r2, #24]
	bx	lr
	