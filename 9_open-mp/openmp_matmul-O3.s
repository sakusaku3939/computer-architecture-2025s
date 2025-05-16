	.arch armv8-a
	.file	"openmp_matmul.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"basic_string: construction from null is not valid"
	.align	3
.LC1:
	.string	"stoi"
	.align	3
.LC2:
	.string	"Finished after "
	.align	3
.LC3:
	.string	" nanoseconds \n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB2067:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2067
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -144
	.cfi_offset 20, -136
	ldr	x20, [x1, 8]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -128
	.cfi_offset 22, -120
	add	x22, sp, 144
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	str	x22, [sp, 128]
	str	d8, [sp, 96]
	.cfi_offset 23, -112
	.cfi_offset 24, -104
	.cfi_offset 25, -96
	.cfi_offset 26, -88
	.cfi_offset 27, -80
	.cfi_offset 28, -72
	.cfi_offset 72, -64
	cbz	x20, .L88
	mov	x0, x20
	bl	strlen
	str	x0, [sp, 120]
	add	x21, sp, 128
	mov	x19, x0
	cmp	x0, 15
	bhi	.L89
	cmp	x0, 1
	bne	.L5
	ldrb	w0, [x20]
	add	x23, sp, 120
	strb	w0, [sp, 144]
.L6:
	ldp	x0, x1, [sp, 120]
	str	x0, [sp, 136]
	strb	wzr, [x1, x0]
	bl	__errno_location
	mov	x20, x0
	ldr	x19, [sp, 128]
	mov	x1, x23
	ldr	w23, [x0]
	mov	w2, 10
	str	wzr, [x20]
	mov	x0, x19
	bl	strtol
	mov	x26, x0
	ldr	x1, [sp, 120]
	cmp	x19, x1
	beq	.L90
	ldr	w1, [x20]
	cmp	w1, 34
	beq	.L8
	mov	x0, 2147483648
	add	x0, x26, x0
	mov	x2, 4294967295
	cmp	x0, x2
	bhi	.L8
	mov	w19, w26
	cbnz	w1, .L10
	str	w23, [x20]
.L10:
	ldr	x0, [sp, 128]
	cmp	x0, x22
	beq	.L12
	ldr	x1, [sp, 144]
	add	x1, x1, 1
	bl	_ZdlPvm
.L12:
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	mov	w1, w26
.LEHB0:
	bl	_ZNSolsEi
	mov	w1, 10
	strb	w1, [sp, 128]
	ldr	x3, [x0]
	ldr	x3, [x3, -24]
	add	x2, x0, x3
	ldr	x2, [x2, 16]
	cbz	x2, .L17
	mov	x1, x21
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.L18:
	mov	x0, 1152921504606846975
	cmp	x26, x0
	bhi	.L19
	lsl	x22, x26, 3
	mov	x23, 0
	mov	x0, x22
	bl	_Znam
	mov	x20, x0
	mov	x0, x22
	bl	_Znam
	mov	x25, x0
	mov	x0, x22
	bl	_Znam
	mov	x21, x0
	cbz	w26, .L91
	.p2align 3,,7
.L20:
	mov	x0, x22
	bl	_Znam
	mov	x1, x0
	str	x1, [x20, x23, lsl 3]
	mov	x0, x22
	bl	_Znam
	mov	x1, x0
	str	x1, [x25, x23, lsl 3]
	mov	x0, x22
	bl	_Znam
	str	x0, [x21, x23, lsl 3]
	add	x23, x23, 1
	cmp	w19, w23
	bgt	.L20
	lsr	w24, w26, 1
	and	x23, x26, 4294967294
	mov	w28, w26
	sub	w26, w26, #1
	lsl	x24, x24, 4
	lsl	x23, x23, 3
	mov	x3, 0
	fmov	d1, 1.0e+0
.L22:
	ldr	x4, [x20, x3, lsl 3]
	ldr	x1, [x25, x3, lsl 3]
	ldr	x2, [x21, x3, lsl 3]
	cmp	w26, 7
	bhi	.L92
.L32:
	mov	x0, 0
	.p2align 3,,7
.L26:
	str	d1, [x4, x0, lsl 3]
	str	d1, [x1, x0, lsl 3]
	str	xzr, [x2, x0, lsl 3]
	add	x0, x0, 1
	cmp	w19, w0
	bgt	.L26
	add	x3, x3, 1
	cmp	w19, w3
	bgt	.L22
.L25:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x27, x0
	and	w9, w28, 1
	mov	x8, 0
	.p2align 3,,7
.L33: // outer loop start: for ( i = 0 ; i < DIM ; i++ )
	ldr	x1, [x21, x8, lsl 3]
	mov	x4, 0
	ldr	x3, [x20, x8, lsl 3]
	add	x7, x1, x22
	add	x5, x1, x23
.L46: // middle loop start: for ( k = 0 ; k < DIM ; k++ )
	ldr	x2, [x25, x4, lsl 3]
	add	x6, x3, 8
	cmp	w26, 2
	bhi	.L42
.L43:
	mov	x0, 0
	.p2align 3,,7
.L37: // inner loop start: for ( j = 0 ; j < DIM ; j++ )
	ldr	d2, [x2, x0, lsl 3]
	ldr	d1, [x3]
	ldr	d0, [x1, x0, lsl 3]
	fmadd	d0, d2, d1, d0 // floating‑point multiply‑add: C[i][j] += A[i][k]*B[k][j]
	str	d0, [x1, x0, lsl 3]
	add	x0, x0, 1
	cmp	w19, w0
	bgt	.L37 // inner loop end (j loop)
	add	x4, x4, 1
	mov	x3, x6
	cmp	w19, w4
	bgt	.L46 // middle loop end (k loop)
	.p2align 3,,7
.L36: // outer loop end: for ( i = 0 ; i < DIM ; i++ )
	add	x8, x8, 1
	cmp	w19, w8
	bgt	.L33 // outer loop end (i loop)
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x2, x0, x27
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	scvtf	d8, x2
	adrp	x1, .LC2
	mov	x2, 15
	add	x1, x1, :lo12:.LC2
	mov	x22, 0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d8
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC3
	mov	x2, 14
	add	x1, x1, :lo12:.LC3
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	.p2align 3,,7
.L50:
	ldr	x0, [x20, x22, lsl 3]
	cbz	x0, .L47
	mov	x1, 8
	bl	_ZdlPvm
.L47:
	ldr	x0, [x25, x22, lsl 3]
	cbz	x0, .L48
	mov	x1, 8
	bl	_ZdlPvm
.L48:
	ldr	x0, [x21, x22, lsl 3]
	cbz	x0, .L49
	mov	x1, 8
	bl	_ZdlPvm
.L49:
	add	x22, x22, 1
	cmp	w19, w22
	bgt	.L50
.L51:
	mov	x0, x20
	bl	_ZdaPv
	mov	x0, x25
	bl	_ZdaPv
	mov	x0, x21
	bl	_ZdaPv
	ldp	x19, x20, [sp, 16]
	mov	w0, 0
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldr	d8, [sp, 96]
	ldp	x29, x30, [sp], 160
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
.L5:
	.cfi_restore_state
	add	x23, sp, 120
	cbz	x0, .L6
	mov	x0, x22
	b	.L4
.L92:
	fmov	v0.2d, 1.0e+0
	and	w6, w28, 1
	movi	v2.2d, 0
.L31:
	add	x0, x4, 8
	add	x5, x1, 8
	cmp	x1, x0
	ccmp	x2, x0, 4, ne
	ccmp	x5, x2, 4, ne
	beq	.L32
	mov	x0, 0
	.p2align 3,,7
.L28:
	str	q0, [x4, x0]
	str	q0, [x1, x0]
	str	q2, [x2, x0]
	add	x0, x0, 16
	cmp	x24, x0
	bne	.L28
	cbz	w6, .L23
	str	d0, [x4, x23]
	add	x3, x3, 1
	str	d0, [x1, x23]
	str	d2, [x2, x23]
	cmp	w19, w3
	ble	.L25
.L86:
	ldr	x4, [x20, x3, lsl 3]
	ldr	x1, [x25, x3, lsl 3]
	ldr	x2, [x21, x3, lsl 3]
	b	.L31
	.p2align 2,,3
.L93:
	cbz	w9, .L34
	ldr	d2, [x2, x23]
	add	x4, x4, 1
	ldr	d1, [x3]
	ldr	d0, [x5]
	fmadd	d0, d2, d1, d0
	str	d0, [x5]
	cmp	w19, w4
	ble	.L36
	ldr	x2, [x25, x4, lsl 3]
	mov	x3, x6
.L42:
	add	x6, x3, 8
	add	x0, x2, 8
	cmp	x1, x6
	ccmp	x7, x3, 0, cc
	ccmp	x0, x1, 4, ls
	beq	.L43
	ld1r	{v2.2d}, [x3]
	mov	x0, 0
	.p2align 3,,7
.L39: // inner loop start: for ( j = 0 ; j < DIM ; j++ )
	ldr	q1, [x2, x0]
	ldr	q0, [x1, x0]
	fmla	v0.2d, v2.2d, v1.2d // floating‑point multiply‑add: C[i][j] += A[i][k]*B[k][j]
	str	q0, [x1, x0]
	add	x0, x0, 16
	cmp	x24, x0
	bne	.L39 // inner loop end (j loop, vectorized)
	b	.L93
	.p2align 2,,3
.L34:
	add	x4, x4, 1
	mov	x3, x6
	cmp	w19, w4
	ble	.L36
	ldr	x2, [x25, x4, lsl 3]
	b	.L42
.L17:
	bl	_ZNSo3putEc
	b	.L18
.L89:
	add	x23, sp, 120
	mov	x0, x21
	mov	x1, x23
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	str	x0, [sp, 128]
	ldr	x1, [sp, 120]
	str	x1, [sp, 144]
.L4:
	mov	x2, x19
	mov	x1, x20
	bl	memcpy
	b	.L6
.L91:
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	mov	x27, x0
	bl	_ZNSt6chrono3_V212system_clock3nowEv
	sub	x3, x0, x27
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	scvtf	d8, x3
	mov	x2, 15
	adrp	x1, .LC2
	add	x1, x1, :lo12:.LC2
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	fmov	d0, d8
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x1, .LC3
	mov	x2, 14
	add	x1, x1, :lo12:.LC3
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE0:
	b	.L51
.L8:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
.LEHB1:
	bl	_ZSt20__throw_out_of_rangePKc
.L23:
	add	x3, x3, 1
	cmp	w19, w3
	bgt	.L86
	b	.L25
.L90:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	_ZSt24__throw_invalid_argumentPKc
.LEHE1:
.L88:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
.LEHB2:
	bl	_ZSt19__throw_logic_errorPKc
.L19:
	bl	__cxa_throw_bad_array_new_length
.L54:
	ldr	w1, [x20]
	mov	x19, x0
	cbnz	w1, .L14
	str	w23, [x20]
.L14:
	ldr	x0, [sp, 128]
	cmp	x0, x22
	beq	.L16
	ldr	x1, [sp, 144]
	add	x1, x1, 1
	bl	_ZdlPvm
.L16:
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE2:
	.cfi_endproc
.LFE2067:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2067:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2067-.LLSDACSB2067
.LLSDACSB2067:
	.uleb128 .LEHB0-.LFB2067
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2067
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L54-.LFB2067
	.uleb128 0
	.uleb128 .LEHB2-.LFB2067
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2067:
	.section	.text.startup
	.size	main, .-main
	.align	2
	.p2align 4,,11
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
.LFB2647:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	adrp	x19, .LANCHOR0
	add	x19, x19, :lo12:.LANCHOR0
	mov	x0, x19
	bl	_ZNSt8ios_base4InitC1Ev
	mov	x1, x19
	adrp	x2, __dso_handle
	ldr	x19, [sp, 16]
	add	x2, x2, :lo12:__dso_handle
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	adrp	x0, :got:_ZNSt8ios_base4InitD1Ev
	ldr	x0, [x0, :got_lo12:_ZNSt8ios_base4InitD1Ev]
	b	__cxa_atexit
	.cfi_endproc
.LFE2647:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I_main
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.zero	1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
