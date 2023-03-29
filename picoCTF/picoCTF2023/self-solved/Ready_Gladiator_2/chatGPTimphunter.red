;redcode-94
;name ImpHunter
;author ChatGPT
;strategy A hunter of the Basic Imp
;assert 1
; ImpHunter code:
start:  SPL 0       ; split instruction
        ADD #2, @1  ; add instruction
        MOV 1, @2   ; move instruction
        JMP start   ; jump back to start
        DAT #0, #0  ; data
end
