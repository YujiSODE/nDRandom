# nDRandom
## Algorithm
Algorithm based on idea from `nDRandom_IDEA.txt`.  
To obtain random coordinates from a given space in n-th dimensions.

### I.
Let variable elements be _`E`_`= (`_`e`_<sub>`0`</sub>`,`_`e`_<sub>`1`</sub>`,...,`_`e`_*<sub>`n`</sub>*`)` where _`i`_`=0,...,`_`n`_.  
A range of a variable element `e`<sub>_`i`_</sub> is divided into _`d`_<sub>_`i`_</sub> intervals.  
A given space is divided into `∏(`_`d`_*<sub>`i`</sub>*`)` cells, where `∏(`_`d`_*<sub>`i`</sub>*`)=`_`d`_<sub>`0`</sub>`*`_`d`_<sub>`1`</sub>`* ... *`_`d`_*<sub>`n`</sub>*.  
A probability to pick up a cell is _`p`_*<sub>`i`</sub>*`=1/∏(`_`d`_*<sub>`i`</sub>*`)`, and _`p`_<sub>`0`</sub>`=`_`p`_<sub>`1`</sub>`= ... =`_`p`_*<sub>`n`</sub>*.  
A probability to pick up a prespecified point in a cell is also _`p`_*<sub>`i`</sub>*`=1/∏(`_`d`_*<sub>`i`</sub>*`)`.

### II.
Let indices correspond to a specified intervals in divided elements as follows:  
_`IDX`_`=(`_`IDX`_<sub>`0`</sub>`,`_`IDX`_<sub>`1`</sub>`,...,`_`IDX`_*<sub>`n`</sub>*`)`.  
Let _`idx`_ be in range `[0, ∏(`_`d`_*<sub>`i`</sub>*`)]`.

#### _`e`_*<sub>`i`</sub>*`=`_`e`_<sub>`0`</sub>
_`IDX`_<sub>`0`</sub>`=`_`idx`_`%`_`d`_<sub>`0`</sub>,  
_`block`_<sub>`0`</sub>`=ceil(`_`idx`_`/`_`d`_<sub>`0`</sub>`)`.
		
		[ei = e1]
		`IDX1 = block0%d1`,
		`block1 = ceil(idx/(d0*d1))`
		
		...
		
		[ei = ej]
		`IDXj = block(j-1) % dj`,
		`blockj = ceil(idx/∏(di): i = 0 to j)`.

	III.
		a coordinate element value can be estimated as follows:
		`ej = x0+mj*dx`
		where `mj` is constant, `x0 = ej[IDXj]`
		and `dx = (ej_max-ej_min)/dj`

