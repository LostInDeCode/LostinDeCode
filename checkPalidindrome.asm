.section 	.text
.global 	checkPalindrome

checkPalindrome:
	push	{lr}				// save return address
	mov		r0, #0				// init result to false
	
	mov		r1, #0				// init index to 0
	mov		r2, #0				// init index2 to 0
	
	mov		r3, r0				// get length of the input string

	bl		strlen				// get length of the input string
	
	mov		r3, r0				// get length of the input string
	
	lsr		r3, #1				// find the midpoint of the string
	
	mov		r4, #1				// init check to true

checkLoop:
	ldrb	r5, [r1]			// get character at index
	ldrb	r6, [r2]