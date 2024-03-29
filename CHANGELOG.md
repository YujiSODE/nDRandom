# Change Log 
## [Unreleased]

## Released: [2.1] - 2021-11-08

## Released: [2.0 beta] - 2021-11-05
## [2.0 beta] - 2021-11-05
## Fixed
- [`sample_web/sampleWeb2.js`]: fixed math functions as `ceil` to `floor`
- [`sample_web/sampleWeb.js`]: fixed math functions as `ceil` to `floor`
- [`sample02/sample02.tclory`]: fixed math functions as `ceil` to `floor`
- [`sample01/sample01.tcl`]: fixed math functions as `ceil` to `floor`
- [`ndrandomOutput_js.tcl`]: fixed math functions as `ceil` to `floor`
- [`ndrandomOutput_tcl.tcl`]: fixed math functions as `ceil` to `floor`
- [`nDRandom_IDEA.txt`]: fixed math functions as `ceil` to `floor`
- [`algorithm.md`]: fixed math functions as `ceil` to `floor`

## Released: [1.2] - 2021-08-21
## [1.2] - 2021-08-20
## Changed
- [`sample_web/index.html`]: copied from `sample_web/ndrandom_web.html`

## Added
- [`sample_web/ndrandom_web.html`] lines 73-96: a new `canvas` tag was added to draw a single triangular plane

## Changed
- [`sample_web/ndrandom_web.html`] lines 26-30:  
  `		<p>`  
  `			Tool that outputs a random coordinates generator in n-th dimensions.`  
  `			<br>This program is web sample version of <a href='https://github.com/YujiSODE/nDRandom'>nDRandom</a>.`  
  `			<br>These samples are pieces of generative art.`  
  `		</p>`
- [`sample_web/ndrandom_web.html`] line 18:  
  `		<meta name='description' content="Tool that outputs a random coordinates generator in n-th dimensions. This program is web sample version of nDRandom. These samples are pieces of generative art.">`

## Added
- [`sample_web/ndrandom_web.html`] line 14:  
  `<!-- These samples are pieces of generative art. -->`

## Changed
- [`sample_web/ndrandom_webScript.js`] line 165:  
  `	tId=setInterval(()=>{F1();F2();F3();},delay);`

## Added
- [`sample_web/ndrandom_webScript.js`] lines 98-162: a new function `F3()` was added to draw a sigle triangular plane on the `canvas` tag

## Changed
- [`sample_web/ndrandom_webScript.js`] line 94:  
  `		ctx.fill();`
- [`sample_web/ndrandom_webScript.js`] lines 88-99: removed
- [`sample_web/ndrandom_webScript.js`] line 11:  
  `	let F1=()=>{},F2=()=>{},F3=()=>{},tId=0;`

## [1.2] - 2021-08-20
## Changed
- [`sample_web/index.html`]: copied from `sample_web/ndrandom_web.html`
- [`sample_web/ndrandom_web.html`] lines 26-68: added `<div class='samples>` ... `</div>` to apply CSS

## Added
- [`sample_web/ndrandom_web_style.css`] lines 14-17:  
  `.samples{`  
  `	display:grid;`  
  `	grid-template-columns:30vw 30vw 30vw;`  
  `}`
- [`sample_web/ndrandom_web_style.css`] line 12:  
  `	overflow:auto;`

## Changed
- [`sample_web/ndrandom_web_style.css`] lines 5 and 6:  
  `	width:25vw;`  
  `	height:25vw;`

## Released: [1.1 beta] - 2021-08-18
## [1.1 beta] - 2021-08-18
## Changed
- [`sample_web/index.html`]: copied from `sample_web/ndrandom_web.html`

## Added
- [`sample_web/ndrandom_web.html`] lines 49-63: added description for random values

## Changed
- [`sample_web/ndrandom_webScript.js`] lines 80 and 81:  
  `		X3=x0+canvasW*(Rs[8]+Rs[9]*0.3)*Math.cos(Rs[14]+Rs[15]*0.3)*0.1;`  
  `		Y3=y0+canvasH*(Rs[8]+Rs[9]*0.3)*Math.sin(Rs[14]+Rs[15]*0.3)*0.1;`
- [`sample_web/ndrandom_webScript.js`] lines 76 and 77:  
  `		X2=x0+canvasW*(Rs[6]+Rs[7]*0.3)*Math.cos(Rs[12]+Rs[13]*0.3)*0.1;`  
  `		Y2=y0+canvasH*(Rs[6]+Rs[7]*0.3)*Math.sin(Rs[12]+Rs[13]*0.3)*0.1;`
- [`sample_web/ndrandom_webScript.js`] lines 72 and 73:  
  `		X1=x0+canvasW*(Rs[4]+Rs[5]*0.3)*Math.cos(Rs[10]+Rs[11]*0.3)*0.1;`  
  `		Y1=y0+canvasH*(Rs[4]+Rs[5]*0.3)*Math.sin(Rs[10]+Rs[11]*0.3)*0.1;`

## [1.1 beta] - 2021-08-16
## Changed
- [`sample_web/index.html`]: copied from `sample_web/ndrandom_web.html`
- [`sample_web/ndrandom_web.html`] line 25:  
  `		<p>Tool that outputs a random coordinates generator in n-th dimensions.<br>This program is web sample version of <a href='https://github.com/YujiSODE/nDRandom'>nDRandom</a>.</p>`
- [`sample_web/ndrandom_webScript.js`] line 42:  
  `	//------------`
- [`sample_web/ndrandom_webScript.js`] line 35:  
  `		//++++++++++++`
- [`sample_web/ndrandom_webScript.js`] lines 11 and 12:  
  `	let F1=()=>{},F2=()=>{},tId=0;`  
  `	//------------`

## Added
- [`sample_web/ndrandom_web.html`] line 21:  
  `		<script type='text/javascript' src='sampleWeb2.js'></script>`
- [`sample_web/ndrandom_web.html`] lines 43-53: a new `canvas` tag was added to draw a triangular planes
- [`sample_web/ndrandom_webScript.js`] lines 44-113: a new function `F2()` was added to draw a triangular plane on the `canvas` tag
- [`sample_web/ndrandom_sampleWeb2.tcl`]
- [`sample_web/sampleWeb2.js`]

## [1.1 beta] - 2021-08-15
## Changed
- [`sample_web/index.html`] lines 26-42: copied from `sample_web/ndrandom_web.html`
- [`sample_web/ndrandom_web.html`] lines 26-42: added `figure` tag, `figcaption` tag and figure title
- [`sample_web/ndrandom_webScript.js`] lines 40-41:  
  `	//`  
  `	tId=setInterval(()=>{F1();},delay);`
- [`sample_web/ndrandom_webScript.js`] lines 11-15:  
  `	let F1=()=>{},tId=0;`  
  `	//`  
  `	//"Random Rectangles"`  
  `	//F1 is function to draw a rectangle area on the canvas tag`  
  `	F1=()=>{`
- [`sample_web/ndrandom_web_style.css`]: a line moved from 6 to 4  

## Added
- [`sample_web/ndrandom_web_style.css`] lines 7-11:  
  ` }`  
  `figure{`  
  `	border:2px solid #f00;`  
  `	background:#eee;`  
  `	width:30vw;`

## Released: [1.01] - 2021-08-09
## [1.01] - 2021-08-06
## Added
- [`README.md`] lines 10-13:  
  ` - It can generates a random coordinates in n-th dimensions employing a single random numbers.`  
  ` - Generated elements in random coordinate may show spurious correlation, but they have no correlation with each other.`  
  ` - Generated elements are not cryptographically secure.`

## Fixed
- [`sample01/ndrandom_sample01.tcl`] lines 4-6: comments
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
