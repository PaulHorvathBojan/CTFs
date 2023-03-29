;redcode
;name Simple Imp Killer
;author ChatGPT

loop spl 0, 1 ; create a new imp
slt -1, 1 ; skip over the mov instruction
jmp loop
end

