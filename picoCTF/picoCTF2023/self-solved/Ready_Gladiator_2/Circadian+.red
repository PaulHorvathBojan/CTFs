;redcode-DS
;name Circadian+
;author inversed
;strategy Moore-style paper + Stone
;strategy Pretty unoriginal, sorry ...
;kill Circadian
;assert 1

;------ paper ------;

pStep equ 4523
bStep equ 1804

;------ stone ------;

step equ 4616
time equ 882
djs equ 5509

;------ boot -------;

bds equ 1615
bdp equ 2733

;-------------------;

org x0

x0 spl 1 , 0
mov -1 , 0
spl 1 , 0
mov < bptr , { bptr
bptr spl x0 + bds + 6 , s0 + 6
mov < pptr , { pptr
pptr jmp x0 + bdp + 6 , paper + 6

paper spl pStep , { from
mov } from , } paper
mov pbomb , > bStep
from mov pbomb + 1 , } paper
jmz.f paper , * from
pbomb dat < 2667 , < 5334

s0 spl # 0 , 0
loop mov bomb , @ ptr
hit add # 2 * step , ptr
ptr mov bomb , } hit - step * time
djn.f loop , < djs
bomb dat } step , > 1

end
