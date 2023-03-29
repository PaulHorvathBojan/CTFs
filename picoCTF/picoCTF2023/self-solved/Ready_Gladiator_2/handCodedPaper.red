;redcode-NW
;name hand coded paper
;author S.Fernandes
;strategy paper
;assert 1

pstep   equ     (CORESIZE/80)*15
ipos    equ     (CORESIZE/80)*40
cpos    equ     (CORESIZE/80)*-5
dpos    equ     (CORESIZE/80)*35

        mov     >(CORESIZE/80)*60         ,    (CORESIZE/80)*10
paper   spl     #0          ,    <pstep
        mov     }paper      ,    >paper
        mov     >ipos       ,    <cpos
        djn.f   *pstep-2    ,    <dpos
end

