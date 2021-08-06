# Change Log 
## [Unreleased]

## [1.01] - 2021-08-06
## Fixed
- [`sample02/ndrandom_sample02.tcl`] lines 4-8: comments
- [`sample_web/ndrandom_sampleWeb.tcl`] lines 5-6, 9-10 and 13-15: comments

## Released: [1.0] - 2021-07-27
## [1.0] - 2021-07-27
## Fixed
- [`algorithm.md`] line 32:  
  ` ### III.`
- [`algorithm.md`] line 15:  
  ` _**`IDX`**_`=(`_`IDX`_<sub>`0`</sub>`,`_`IDX`_<sub>`1`</sub>`,...,`_`IDX`_*<sub>`n`</sub>*`)`.  `

## Removed
- [`algorithm.md`] lines 9-13

## Fixed
- [`algorithm.md`] line 7:  
  ` Let variable elements be _**`E`**_`= (`_`e`_<sub>`0`</sub>`,`_`e`_<sub>`1`</sub>`,...,`_`e`_*<sub>`n`</sub>*`)` where _`i`_`=0,...,`_`n`_.  `
- [`README.md`] line 47:  
  ` _**`IDX`**_`=(`_`IDX`_<sub>`0`</sub>`,`_`IDX`_<sub>`1`</sub>`,...,`_`IDX`_*<sub>`n`</sub>*`)`.  `
- [`README.md`] line 44:  
  ` Let variable elements be _**`E`**_`= (`_`e`_<sub>`0`</sub>`,`_`e`_<sub>`1`</sub>`,...,`_`e`_*<sub>`n`</sub>*`)` where _`i`_`=0,...,`_`n`_.  `

## [1.0] - 2021-07-26
## Changed
- [`sample_web/index.html`] line 29:  
  `			<br>Random values: <code><i><b>X</b></i> = (<i>x</i><sub>1</sub>, <i>x</i><sub>2</sub>, ... , <i>x</i><sub>7</sub>)</code>`
- [`sample_web/ndrandom_web.html`] line 29:  
  `			<br>Random values: <code><i><b>X</b></i> = (<i>x</i><sub>1</sub>, <i>x</i><sub>2</sub>, ... , <i>x</i><sub>7</sub>)</code>`

## Added
- [`sample_web/index.html`]: based on `sample_web/ndrandom_web.html`

## Changed
- [`sample_web/ndrandom_web.html`] lines 26-38:  
  `		<canvas id='ndrandomCvs'></canvas>`  
  `		<!-- -->`  
  `		<pre>`  
  `			<br>Random values: <code><i>U</i> = (<i>x</i><sub>1</sub>, <i>x</i><sub>2</sub>, ... , <i>x</i><sub>7</sub>)</code>`  
  `			<br><code><i>x</i><sub>1</sub>: relative x coordinate</code>`  
  `			<br><code><i>x</i><sub>2</sub>: relative y coordinate</code>`  
  `			<br><code><i>x</i><sub>3</sub>: relative width</code>`  
  `			<br><code><i>x</i><sub>4</sub>: relative height</code>`  
  `			<br><code><i>x</i><sub>5</sub>: R value of RGB color</code>`  
  `			<br><code><i>x</i><sub>6</sub>: G value of RGB color</code>`  
  `			<br><code><i>x</i><sub>7</sub>: B value of RGB color</code><br>`  
  `		</pre>`  
  `		<!-- -->`

- [`sample_web/ndrandom_webScript.js`] lines 19 and 20:  
  `		//Rs[0] -> x1: relative x coordinate`  
  `		//Rs[2] -> x2: relative y coordinate`

- [`sample_web/ndrandom_web_style.css`] lines 3-6:  
  `	border:1px solid #fff;`  
  `	width:30vw;`  
  `	height:30vw;`  
  `	background:#000;`

## [1.0] - 2021-07-25
## Added
- web sample
  - [`sample_web/ndrandom_sampleWeb.tcl`]
  - [`sample_web/ndrandom_web.html`]
  - [`sample_web/ndrandom_webScript.js`]
  - [`sample_web/ndrandom_web_style.css`]
  - [`sample_web/sampleWeb.js`]

## Removed
- [`nDRandom.tcl`] lines 4-5:  
  >` # idea by Yuji Sode on [2021-05-28 to 2021-05-31] `  
  >`#`

## Released: [0.11 beta] - 2021-07-24
## [0.11 beta] - 2021-07-24
## Added
- [`README.md`] line 62:  
  >`- [`ndrandomOutput_js.tcl`](ndrandomOutput_js.tcl): module to output as JavaScript file`

## [0.11 beta] - 2021-07-24
## Changed
- [`README.md`] lines 30-32:  
  >`     keyword: output type`  
  >`    tcl: Tcl`  
  >`    js: JavaScript`
- [`nDRandom.tcl`] line 251:  
  >` 	#"tcl": Tcl, "js": JavaScript`
- [`nDRandom.tcl`] line 72:  
  >`#	#"tcl": Tcl, "js": JavaScript`
- [`nDRandom.tcl`] line 34:  
  >`# #"tcl": Tcl, "js": JavaScript`

## [0.11 beta] - 2021-07-23
## Added
- [`ndrandomOutput_js.tcl`]: module to output as JavaScript file

## Changed
- [`sample02/sample02.tcl`] line 19:  
  >` 	unset u idx block;return $result;`
- [`sample02/sample02.tcl`] line 1:  
  >` #timestamp:Fri Jul 23 16:29:30 JST 2021`
- [`sample01/sample01.tcl`] line 13:  
  >` 	unset u idx block;return $result;`
- [`sample01/sample01.tcl`] line 1:  
  >` #timestamp:Fri Jul 23 16:28:35 JST 2021`
- [`ndrandomOutput_tcl.tcl`] line 130:  
  >` 			puts -nonewline $c "\n\tunset u idx block\;";`
sample02/sample02.tcl
## [0.11 beta] - 2021-07-22
## Removed
- [`README.md`] lines 12-19

## Changed
- [`README.md`] line 33:  
  >`  - `$division`: number of divided ranges that are not less than 2`

## Added
- [`README.md`] line 27:  
  >`     - `$division`: number of divided ranges that are not less than 2`
- [`nDRandom.tcl`] line 269:  
  >` #   	  - $division: number of divided ranges that are not less than 2`

## Changed
- [`nDRandom.tcl`] line 125:  
  >` 	set division [expr {$division<2?2:int($division)}];`
- [`nDRandom.tcl`] line 118:  
  >` 	# - $division: number of divided ranges that are not less than 2`
- [`nDRandom.tcl`] lines 28 and 53:  
  >`#   	- $division: number of divided ranges that are not less than 2`

## Added
- [`nDRandom.tcl`] line 21:  
  >`#   	  - $division: number of divided ranges that are not less than 2`

## Released: [0.1 beta] - 2021-07-22
## [0.1 beta] - 2021-07-22
