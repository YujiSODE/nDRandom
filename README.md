# nDRandom
Tool that outputs a random coordinates generater in n-th dimensions  
GitHub: https://github.com/YujiSODE/nDRandom  
>Copyright (c) 2020 Yuji SODE \<yuji.sode@gmail.com\>  
>This software is released under the MIT License.  
>See LICENSE or http://opensource.org/licenses/mit-license.php  
______
## 1. Description
`nDRandom` is a tool that outputs a random coordinates generater in n-th dimensions.

## 2. Concept
<img width=300 src="conceptIMG_nDRandom.png" alt="conceptIMG_nDRandom">

## 3. [Algorithm](algorithm.md)
To obtain random coordinates from a given space in `n`-th dimensions.  
Let variable elements be _`E`_`= (`_`e`_<sub>`0`</sub>`,`_`e`_<sub>`1`</sub>`,...,`_`e`_*<sub>`n`</sub>*`)` where _`i`_`=0,...,`_`n`_.  
A range of a variable element `e`<sub>_`i`_</sub> is divided into _`d`_<sub>_`i`_</sub> intervals.  
Let indices correspond to a specified intervals in divided elements as follows:  
_`IDX`_`=(`_`IDX`_<sub>`0`</sub>`,`_`IDX`_<sub>`1`</sub>`,...,`_`IDX`_<sub>n)`.  
A coordinate element value can be estimated as follows:  
_`e`_<sub>_`j`_</sub>`=`_`x`_0+mj*dx`
		where `mj` is constant, `x0 = ej[IDXj]`
		and `dx = (ej_max-ej_min)/dj`

## 4. Scripts
- [`nDRandom.tcl`](nDRandom.tcl): main script
- [`ndrandomOutput_tcl.tcl`](ndrandomOutput_tcl.tcl): module to output as Tcl file
