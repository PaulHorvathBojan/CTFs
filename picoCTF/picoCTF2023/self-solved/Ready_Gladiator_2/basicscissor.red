;redcode
;name base scn
;assert 1
scn add   #10, ptr
ptr jmz.f scn, 5
    mov.i 2, >ptr
    jmp   -1
end
