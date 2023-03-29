;redcode-DS
;name Ultradian 2011
;author inversed
;strategy Moore-style paper
;assert 1

pStep0	equ	6698
pStep1	equ	4502
bStep	equ	7673
org	x0

x0	spl	 1,		  0
	mov	-1,		  0
	spl	 1,		  0
	mov	 x0 - 1,	} silk0

silk0	spl	@-6,		> pStep0
	mov	} silk0,	> silk0
	mov	} silk0,	> silk0
paper	spl	  pStep1,	{ from
	mov	} from,		} paper
	mov	  pbomb,	> bStep
from	mov	  paper + 6,	} paper
	jmz.f	  paper,	* from
pbomb	dat	< 2667,		< 5334

end
