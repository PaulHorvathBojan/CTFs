;redcode-94
;name ImpHunter5
;author ChatGPT
;strategy A hunter of the Basic Imp

; ImpHunter5 code:
;assert 1

start:  SPL 0        ; split instruction
        ADD #2, @1   ; add instruction
        JMP start    ; jump back to start
        DAT #0, #0   ; data

        SPL 0        ; split instruction
        MOV #1, @-1  ; move instruction
        ADD #2, @1   ; add instruction
        JMP -2       ; jump back to start of first process
        DAT #0, #0   ; data

        SPL 0        ; split instruction
        JMP 2        ; jump back to start of second process
        DAT #0, #0   ; data

end

