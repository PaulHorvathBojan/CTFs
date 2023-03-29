;redcode
;name Impring
;assert 1
warrior	one    JMP imp-2666 ; jump to future imp location 1 (+1)
	start  SPL c        ; split to the next instruction
	       SPL imp+2667 ; split to future imp location 2
	imp    MOV 0,2667   ; copy to future imp location 2
	end start
jmp warrior, <-10
end
