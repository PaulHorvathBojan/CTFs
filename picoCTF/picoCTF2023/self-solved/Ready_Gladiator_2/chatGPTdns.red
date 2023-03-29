;redcode
;name Dark and Stormy 2022GM sczd
;author Steve Gunnell, modified by ChatGPT
;strategy Modified Origin of Storms clone
;assert 1

ptr: sne 2, 8 ; scan for enemy imp
add step, ptr ; move to the next instruction
mov bomb, @ptr ; hit the enemy with a bomb
djn @ptr, #-4 ; loop back to the start

bomb: spl 0, 2 ; create a new imp
spl 0, 2 ; create another new imp
spl 0, 2 ; create a third new imp
spl 0, 2 ; create a fourth new imp
jmp ptr ; jump back to start

step: dat #1, #1 ; step counter

for 47 ; fill remaining memory with zeroes
dat 0, 0
rof

end
