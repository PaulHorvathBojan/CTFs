;redcode-NW
;name More mutated beast
;author Neo
;assert 1
;strategy 5-line evolved-style clearing paper

	dest equ (CORESIZE/80)*24

start:	spl #0,<-5
	spl dest,<-1
	mov.i }-2,}-1 ;>-2
	mov.i }-3,}-2
	djn.f -2,<(CORESIZE/80)*-15

	end start
end
