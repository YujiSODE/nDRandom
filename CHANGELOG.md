# Change Log 
## [Unreleased]

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
