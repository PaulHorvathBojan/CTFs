;redcode-DS
;name Snowdrift
;author John Metcalf
;strategy stone/imps
;assert 1

lboot equ (rose+6000)
sboot equ (rose+2000)

istep equ 2667
sstep equ 2365

spl 1, <3000
spl 1, <5000

mov <boots, {boots

mov <bootl, {bootl

boots spl sboot, stone+4

bootl jmp lboot, launch+4

stone spl #sstep, -sstep
rose mov >sstep, 1-sstep
add stone, rose
djn.f rose, <-100

launch spl #0, 0
add.f #istep, pump
pump jmp imp-4*istep,>2000
imp mov.i #istep, *0

end


