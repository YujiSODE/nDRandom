# Change Log 
## [Unreleased]

## [0.11 beta] - 2021-07-23
## Changed
- [`ndrandomOutput_tcl.tcl`] line 130:  
  >` 			puts -nonewline $c "\n\tunset u idx block\;";`
 			puts -nonewline $c "\n\tunset u idx block\;";
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
