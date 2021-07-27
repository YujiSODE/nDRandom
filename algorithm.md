# nDRandom
## Algorithm
To obtain random coordinates from a given space in n-th dimensions.  
<img width=300 src="conceptIMG_nDRandom.png" alt="conceptIMG_nDRandom">

### I.
Let variable elements be _**`E`**_`= (`_`e`_<sub>`0`</sub>`,`_`e`_<sub>`1`</sub>`,...,`_`e`_*<sub>`n`</sub>*`)` where _`i`_`=0,...,`_`n`_.  
A range of a variable element `e`<sub>_`i`_</sub> is divided into _`d`_<sub>_`i`_</sub> intervals.  
A given space coordinate element value can be estimated as follows:  
_`e`_<sub>*`j`*</sub>`=`_`x`_<sub>`0`</sub>`+`_`c`_*<sub>`j`</sub>*`*`_`dx`_,  
where _`c`_*<sub>`j`</sub>* is constant,  
_`x`_<sub>`0`</sub>`=`_`e`_*<sub>`j`</sub>*`[`_`IDX`_*<sub>`j`</sub>*`]`  
and _`dx`_`=(`_`e`_*<sub>`j`</sub>*<sup>`max`</sup>`-`_`e`_*<sub>`j`</sub>*<sup>`min`</sup>`)/`_`d`_*<sub>`j`</sub>*.  
A given space is divided into `∏(`_`d`_*<sub>`i`</sub>*`)` cells, where `∏(`_`d`_*<sub>`i`</sub>*`)=`_`d`_<sub>`0`</sub>`*`_`d`_<sub>`1`</sub>`* ... *`_`d`_*<sub>`n`</sub>*.  
A probability to pick up a cell is _`p`_*<sub>`i`</sub>*`=1/∏(`_`d`_*<sub>`i`</sub>*`)`, and _`p`_<sub>`0`</sub>`=`_`p`_<sub>`1`</sub>`= ... =`_`p`_*<sub>`n`</sub>*.  
A probability to pick up a prespecified point in a cell is also _`p`_*<sub>`i`</sub>*`=1/∏(`_`d`_*<sub>`i`</sub>*`)`.

### II.
Let indices correspond to a specified intervals in divided elements as follows:  
_`IDX`_`=(`_`IDX`_<sub>`0`</sub>`,`_`IDX`_<sub>`1`</sub>`,...,`_`IDX`_*<sub>`n`</sub>*`)`.  
Let _`idx`_ be in range `[0, ∏(`_`d`_*<sub>`i`</sub>*`)-1]`.

#### _`e`_*<sub>`i`</sub>*`=`_`e`_<sub>`0`</sub>
_`IDX`_<sub>`0`</sub>`=`_`idx`_`%`_`d`_<sub>`0`</sub>,  
_`block`_<sub>`0`</sub>`=ceil(`_`idx`_`/`_`d`_<sub>`0`</sub>`)`.

#### _`e`_*<sub>`i`</sub>*`=`_`e`_<sub>`1`</sub>
_`IDX`_<sub>`1`</sub>`=`_`block`_<sub>`0`</sub>`%`_`d`_<sub>`1`</sub>,  
_`block`_<sub>`1`</sub>`=ceil(`_`idx`_`/(`_`d`_<sub>`0`</sub>`*`_`d`_<sub>`1`</sub>`))`

`...`  

#### _`e`_*<sub>`i`</sub>*`=`_`e`_*<sub>`j`</sub>*
_`IDX`_*<sub>`j`</sub>*`=`_`block`_<sub>_`j`_`-1`</sub>`%`_`d`_*<sub>`j`</sub>*,  
_`block`_*<sub>`j`</sub>*`=ceil(`_`idx`_`/∏(`_`d`_*<sub>`i`</sub>*`): `_`i`_`= 0 to `_`j`_`)`.

#### III.
A coordinate element value can be estimated as follows:  
_`e`_<sub>*`j`*</sub>`=`_`x`_<sub>`0`</sub>`+`_`c`_*<sub>`j`</sub>*`*`_`dx`_,  
where _`c`_*<sub>`j`</sub>* is constant,  
_`x`_<sub>`0`</sub>`=`_`e`_*<sub>`j`</sub>*`[`_`IDX`_*<sub>`j`</sub>*`]`  
and _`dx`_`=(`_`e`_*<sub>`j`</sub>*<sup>`max`</sup>`-`_`e`_*<sub>`j`</sub>*<sup>`min`</sup>`)/`_`d`_*<sub>`j`</sub>*.
