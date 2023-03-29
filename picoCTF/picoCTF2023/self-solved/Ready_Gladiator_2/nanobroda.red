;redcode-NW
;assert 1
;author G.Labarga
;name Nano'Broda

pstep equ (CORESIZE/80)*63
cte1 equ (CORESIZE/80)*7
cte2 equ (CORESIZE/80)*57
cte3 equ (CORESIZE/80)*32
cte4 equ (CORESIZE/80)*41

start:	spl #0,<pstep
	mov.i }-1,>-1
	mov.i <cte1,<cte2
	mov.i }-1,{cte3
	djn.f *pstep-3,<cte4
end start
end
