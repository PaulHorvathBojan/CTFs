;redcode-94
;name ImpHunter2
;author ChatGPT
;strategy A hunter of the Basic Imp
;assert 1
; ImpHunter2 code:
start:  SPL 0        ; split instruction
        ADD #3, @1   ; add instruction
        JMP start    ; jump back to start
        DAT #0, #0   ; data

        SPL 0        ; split instruction
        MOV #1, @-1  ; move instruction
        JMP -2       ; jump back to start of first process
        DAT #0, #0   ; data
end
