;redcode-DS
;name Break Stuff
;author Anton Marsden
;strategy An old warrior, adapted
;assert CORESIZE==8000
;kill Shorty

;;;
;;; This is basically blue candle, adapted to fit in 20 instructions.
;;;
;;; Finite spirals seem to work well with limited processes, whereas paper
;;; spirals and infinite spirals are fairly ineffective.
;;;
;;; Vampires are also likely to do well with a limit of 200 processes.
;;;

gate equ hit+5001
sign equ (-1) 
step4 equ (3364) 
step equ (sign*step4)
magic equ (1000)

;constants for spiral launch
istep equ 2667


; ************ blue x-torch ***********

clptr EQU (steps-3)

steps spl #2*step,-step ;doubles as bomb
loop add.x steps,ptr 
ptr mov.i >ptr+magic*step,@hit+step
mov.i steps,@ptr
hit djn.f loop, <gate ;bombed with spl 
mov.i bomb,>clptr
djn.f -1,{clptr
bomb dat #-1,<bomb-clptr+2 ;bomb for clear

dat 0,0
dat 0,0
dat 0,0

; ************ binspiral *************

launch spl @0, steps

spl @1, {0
spl 4, -1
spl 2,}j3
j1 jmp imp-1,}0
j2 jmp imp+istep-1,}0
nop }j1,}j2
j3 jmp imp+2*istep-1,}0
imp mov.i *0, istep

end launch
end
