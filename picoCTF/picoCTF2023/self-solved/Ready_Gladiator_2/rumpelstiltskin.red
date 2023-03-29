;redcode-NW
;name rumpelstiltskin
;author gnik
;strategy "Today I bake, tomorrow brew,
;strategy The next I'll have the young Queen's child.
;strategy Ha! glad am I that no one knew
;strategy That Rumpelstiltskin I am styled."
;assert 1

s1 EQU (CORESIZE/80)*14
s2 EQU (CORESIZE/80)*46
s3 EQU (CORESIZE/80)*18
s4 EQU (CORESIZE/80)*3
s5 EQU (CORESIZE/80)*10
istep EQU ((CORESIZE/3)+1)

        org     go
first   spl     imp+2*istep, >s1
go      spl     1,           >s2
        spl     first,       >s3
        spl     imp+istep,   <s4
imp     mov.i   #s5,         istep
end
