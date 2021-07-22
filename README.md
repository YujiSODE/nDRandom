# nDRandom
Tool that outputs a random coordinates generator in n-th dimensions  
GitHub: https://github.com/YujiSODE/nDRandom  
>Copyright (c) 2020 Yuji SODE \<yuji.sode@gmail.com\>  
>This software is released under the MIT License.  
>See LICENSE or http://opensource.org/licenses/mit-license.php  
______
<img width=300 src="conceptIMG_nDRandom.png" alt="conceptIMG_nDRandom">

## 1. Description
`nDRandom` is a tool that outputs a random coordinates generator in n-th dimensions.  
The generated script is output in the current directory.  
Output generated script format: `${name}_info()` and `${name}_random(double)` in math functions.  
  
- `${name}_info()`: it returns preset data
- `${name}_random(double)`: it returns a random coordinates in `n`-th dimensions
  - `$double`: a real number in range `(0.0, 1.0)`
  - output coordinates: `{`_`x`_<sub>`1`</sub>` `_`dx`_<sub>`1`</sub>` `_`x`_<sub>`2`</sub>` `_`dx`_<sub>`2`</sub>` ... `_`x`_*<sub>`n`</sub>*` `_`dx`_*<sub>`n`</sub>*`}`  
    where _`X`_*<sub>`i`</sub>*`=`_`x`_*<sub>`i`</sub>*`+`_`c`_`*`_`dx`_*<sub>`i`</sub>* and _`c`_ is a constant.

### shell
- `tclsh nDRandom.tcl name option min1 max1 division1 ?min2 max2 division2 ?... minN maxN divisionN??;`
  - `$name`: a keyword to determine output file name and its functions
  - `$option`: a keyword to determine output type
  - `$min1, $max1 and $division1`: data range
  - `$min2, $max2 and $division2 (, ..., $minN, $maxN and $divisionN)`: optional data ranges

### Tcl
- `::nDRandom::setRange min max division;`: loads a variable range
- `::nDRandom::output name ?option?;`: outputs a random coordinates generater in the current directory
  - `$min and $max`: minimum and maximum values
  - `$dividion`: number of divided ranges
  - `$name`: a keyword to determine output file and its functions
  - `$option`: an optional keyword to determine output type, and default value is `tcl`

### Available keyword for `$option`
    tcl

### Generated script
The generated script is output in the current directory.
- Generated script format: `${name}_info()` and `${name}_random(double)` in math functions
- `${name}_info()`: it returns preset data
- `${name}_random(double)`: it returns a random coordinates in n-th dimensions
  - `$double`: a real number in range `(0.0, 1.0)`
  - output coordinates: `{x1 dx1 x2 dx2 ... xn dxn}` where `Xi = xi+c*dxi` and `c` is a constant

## 2. [Algorithm](algorithm.md)
To obtain random coordinates from a given space in `n`-th dimensions.  
Let variable elements be _`E`_`= (`_`e`_<sub>`0`</sub>`,`_`e`_<sub>`1`</sub>`,...,`_`e`_*<sub>`n`</sub>*`)` where _`i`_`=0,...,`_`n`_.  
A range of a variable element `e`<sub>_`i`_</sub> is divided into _`d`_<sub>_`i`_</sub> intervals.  
Let indices correspond to a specified intervals in divided elements as follows:  
_`IDX`_`=(`_`IDX`_<sub>`0`</sub>`,`_`IDX`_<sub>`1`</sub>`,...,`_`IDX`_*<sub>`n`</sub>*`)`.  
  
A coordinate element value can be estimated as follows:  
_`e`_<sub>*`j`*</sub>`=`_`x`_<sub>`0`</sub>`+`_`c`_*<sub>`j`</sub>*`*`_`dx`_,  
where _`c`_*<sub>`j`</sub>* is constant,  
_`x`_<sub>`0`</sub>`=`_`e`_*<sub>`j`</sub>*`[`_`IDX`_*<sub>`j`</sub>*`]`  
and _`dx`_`=(`_`e`_*<sub>`j`</sub>*<sup>`max`</sup>`-`_`e`_*<sub>`j`</sub>*<sup>`min`</sup>`)/`_`d`_*<sub>`j`</sub>*.

## 3. Scripts
It requires Tcl 8.6+.
### main script
- [`nDRandom.tcl`](nDRandom.tcl): main script

### modules
- [`ndrandomOutput_tcl.tcl`](ndrandomOutput_tcl.tcl): module to output as Tcl file

## 4. Library list
- Sode, Y. 2018. lSum_min.tcl: https://gist.github.com/YujiSODE/1f9a4e2729212691972b196a76ba9bd0
