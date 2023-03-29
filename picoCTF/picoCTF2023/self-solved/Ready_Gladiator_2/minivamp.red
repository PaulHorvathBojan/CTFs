;redcode
;name Mini Vampire
;assert 1
const EQU 5

     SPL 0	    ; prevent bombers from instant kill
main MOV ptr, @ptr  ; move ptr to location in ptr's B field
     ADD data, ptr  ; update ptr
     DJN main, <2333; jump back AND decrement core 

ptr  JMP trap, ptr  ; Jump to trap + pointer

trap SPL 1, -100    ; split self (replicator slows down)
     MOV data, <-1  ;core clear
     JMP -2         ; loop until killed (by self bombing)

data DAT #const, #-const
end
