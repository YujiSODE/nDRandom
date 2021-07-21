#nDRandom
#nDRandom.tcl
#
# idea by Yuji Sode on [2021-05-28 to 2021-05-31] 
#
##===================================================================
#	Copyright (c) 2021 Yuji SODE <yuji.sode@gmail.com>
#
#	This software is released under the MIT License.
#	See LICENSE or http://opensource.org/licenses/mit-license.php
##===================================================================
#Tool that outputs a random coordinates generator in n-th dimensions
#
#=== Synopsis ===
#*** [shell] ***
# - `tclsh nDRandom.tcl name option min1 max1 division1 ?min2 max2 division2 ?... minN maxN divisionN??;`
#   	- $name: a keyword to determine output file name and its functions
#   	- $option: a keyword to determine output type
#   	- $min1, $max1 and $division1: data range
#   	- $min2, $max2 and $division2 (, ..., $minN, $maxN and $divisionN): optional data ranges
#
#*** [Tcl] ***
#`::nDRandom::setRange min max division;` loads a variable range
#`::nDRandom::output name ?option?;` outputs a random coordinates generater in the current directory
#
#   	- $min and $max: minimum and maximum values
#   	- $dividion: number of divided ranges
#   	- $name: a keyword to determine output file and its functions
#   	- $option: an optional keyword to determine output type, and default value is "tcl"
#
# #################################
# #--- available keyword for $option ---
# #{tcl}
# #################################
#
#=== generated script ===
#the generated script is output in the current directory
#generated script format: "${name}_info()" and "${name}_random(double)" in math functions
#
# - ${name}_info(): it returns preset data
# - ${name}_random(double): it returns a random coordinates in n-th dimensions
#   - $double: a real number in range (0.0, 1.0)
#   - output coordinates: {x1 dx1 x2 dx2 ... xn dxn} where Xi = xi+c*dxi and c is a constant
#--------------------------------------------------------------------
#
#*** <namespace ::nDRandom> ***
#
# - `::nDRandom::setRange min max division;`
#   	procedure that loads a variable range: minimum and maximum values, and number of divided ranges
#   	number of preset data is returned
#   	- $min and $max: minimum and maximum values
#   	- $dividion: number of divided ranges
#
# - `::nDRandom::reset;`
#   	procedure that resets preset data, and returns number of preset data
#
# - `::nDRandom::info;`
#   	procedure that returns a list of preset data
#
# - `::nDRandom::vars;`
#   	procedure that returns parameters: {min1 d1 d1 dx1 min2 d2 d1*d2 dx2 ... minj dj d1*d2*...*dj dxj} where di is division
#   	=> use `foreach {e1 e2 e3 e4} [returned list] { ... };`
#
#--- outputs ---
# - `::nDRandom::output name ?option?;`
#   	procedure that outputs a random coordinates generater in the current directory
#   	- $name: a keyword to determine output file and its functions
#   	- $option: an optional keyword, and default value is "tcl"
#	#################################
#	#--- available keyword for $option ---
#	#{tcl}
#	#################################
#--------------------------------------------------------------------
#
#*** <namespace ::tcl::mathfunc> ***
#additional math function
#
#--- lSum_min.tcl (Yuji SODE, 2018): https://gist.github.com/YujiSODE/1f9a4e2729212691972b196a76ba9bd0 ---
# - `lSum(list)`: function that returns sum of given list
# 	- `$list`: a numerical list
##===================================================================
#
set auto_noexec 1;
package require Tcl 8.6;
#--------------------------------------------------------------------
#
#additional math function
#*** <namespace ::tcl::mathfunc> ***
#=== lSum_min.tcl (Yuji SODE, 2018): https://gist.github.com/YujiSODE/1f9a4e2729212691972b196a76ba9bd0 ===
#Additional mathematical function for Tcl expressions
# [Reference]
# - Iri, M., and Fujino., Y. 1985. Suchi keisan no joshiki (in Japanese). Kyoritsu Shuppan Co., Ltd.; ISBN 978-4-320-01343-8
proc ::tcl::mathfunc::lSum {list} {namespace path {::tcl::mathop};set S 0.0;set R 0.0;set T 0.0;foreach e $list {set R [+ $R [expr double($e)]];set T $S;set S [+ $S $R];set T [+ $S [expr {-$T}]];set R [+ $R [expr {-$T}]];};return $S;};
#--------------------------------------------------------------------
#
#*** <namespace ::nDRandom> ***
namespace eval ::nDRandom {
	#=== variables ===
	#
	#N is number of preset data
	variable N 0;
	#
	#ID_LIST is a list of preset data id
	# - id format: `xi` where i is positive integer
	variable ID_LIST {};
	#
	#DATA is an array of preset data
	# - data format: `{id min max division dx}`
	variable DATA;
	array set DATA {};
};
#
#procedure that loads a variable range: minimum and maximum values, and number of divided ranges
#number of preset data is returned
proc ::nDRandom::setRange {min max division} {
	# - $min and $max: minimum and maximum values
	# - $dividion: number of divided ranges
	#
	variable ::nDRandom::N;variable ::nDRandom::ID_LIST;variable ::nDRandom::DATA;
	###
	set min_ [expr {$min<$max?$min:$max}];
	set max_ [expr {$min<$max?$max:$min}];
	#
	set division [expr {$division<1?1:int($division)}];
	#
	# (max-min)/division
	set dx [expr {lSum([list $max_ -$min_])/double($division)}];
	#
	#id
	incr ::nDRandom::N 1;
	set id "x$::nDRandom::N";
	#
	lappend ::nDRandom::ID_LIST $id;
	#
	set ::nDRandom::DATA($id) "$id $min_ $max_ $division $dx";
	#
	unset min_ max_ division dx id;
	#
	#number of preset data is returned
	return $::nDRandom::N;
};
#
#procedure that resets preset data, and returns number of preset data
proc ::nDRandom::reset {} {
	variable ::nDRandom::N;variable ::nDRandom::ID_LIST;variable ::nDRandom::DATA;
	###
	set ::nDRandom::N 0;
	#
	set ::nDRandom::ID_LIST {};
	#
	array unset ::nDRandom::DATA;
	array set ::nDRandom::DATA {};
	#
	#number of preset data is returned
	return $::nDRandom::N;
};
#
#procedure that returns a list of preset data
proc ::nDRandom::info {} {
	variable ::nDRandom::ID_LIST;variable ::nDRandom::DATA;
	###
	set vList {};
	lappend vList {ID MIN MAX divisions dx};
	#
	if {[llength $::nDRandom::ID_LIST]} {
		foreach e $::nDRandom::ID_LIST {
			lappend vList $::nDRandom::DATA($e);
		};
	};
	#
	return $vList;
};
#
#procedure that returns parameters: {min1 d1 d1 dx1 min2 d2 d1*d2 dx2 ... minj dj d1*d2*...*dj dxj} where di is division
# => use `foreach {e1 e2 e3 e4} [returned list] { ... };`
proc ::nDRandom::vars {} {
	variable ::nDRandom::ID_LIST;variable ::nDRandom::DATA;
	###
	set l {};
	set d {};
	set min 0.0;
	set div 0;
	set dPi 1.0;
	set dx 0.0;
	#
	if {![llength $::nDRandom::ID_LIST]} {return "NO_DATA";};
	#
	foreach e $::nDRandom::ID_LIST {
		#
		#$d: `{id min max division dx}`
		set d $::nDRandom::DATA($e);
		#
		set min [expr {double([lindex $d 1])}];
		set div [expr {int([lindex $d 3])}];
		set dPi [expr {$dPi*double($div)}];
		set dx [expr {double([lindex $d 4])}];
		#
		lappend l $min;
		lappend l $div;
		lappend l $dPi;
		lappend l $dx;
	};
	#
	unset d div dPi dx;
	#
	return $l;
};
#
#procedure that returns number of divided cells
proc ::nDRandom::cells {} {
	variable ::nDRandom::ID_LIST;variable ::nDRandom::DATA;
	###
	set div 0;
	set n 1;
	#
	if {![llength $::nDRandom::ID_LIST]} {return "NO_DATA";};
	#
	foreach e $::nDRandom::ID_LIST {
		#
		#$d: `{id min max division dx}`
		set d $::nDRandom::DATA($e);
		#
		set div [expr {int([lindex $d 3])}];
		set n [expr {$n*$div}];
	};
	#
	unset d div;
	#
	return $n;
};
#--------------------------------------------------------------------
#
#--- outputs ---
#procedure that outputs a random coordinates generator in the current directory
#it returns output file name
#
#=== generated script ===
#the generated script is output in the current directory
#generated script format: "${name}_info()" and "${name}_random(double)" in math functions
#
# - ${name}_info(): it returns preset data
# - ${name}_random(double): it returns a random coordinates in n-th dimensions
#   - $double: a real number in range (0.0, 1.0)
#   - output coordinates: {x1 dx1 x2 dx2 ... xn dxn} where Xi = xi+c*dxi and c is a constant
proc ::nDRandom::output {name {option tcl}} {
	# - $name: a keyword to determine output file name and its functions
	# - $option: an optional keyword to determine output type, and default value is "tcl"
	#################################
	#--- available keyword for $option ---
	#{tcl}
	#################################
	###
	#
	source -encoding utf-8 "ndrandomOutput_${option}.tcl";
	#=> `::nDRandom::output\$ $name;`
	#
	return [::nDRandom::output\$ $name];
};
#
#=======================================================================================
#
#=== shell ===
#`tclsh nDRandom.tcl name option min1 max1 division1 ?min2 max2 division2 ?... minN maxN divisionN??;`
#	- $name: a keyword to determine output file name and its functions
#   	- $option: a keyword to determine output type
#	- $min1, $max1 and $division1: data range
#	- $min2, $max2 and $division2 (, ..., $minN, $maxN and $divisionN): optional data ranges
###
#
#--- arguments ---
set name_shell [lindex $argv 0];
set option_shell [lindex $argv 1];
set ranges_shell [lrange $argv 2 end];
#
#when arguments are invalid
if {$argc&&(!([llength $name_shell])||!([llength $option_shell]))} {
	unset name_shell option_shell ranges_shell;
	return -code error "arguments are invalid";
};
#
#when data range is invalid
if {[llength $ranges_shell]%3} {
	unset name_shell option_shell ranges_shell;
	return -code error "data range requires form of \"min1 max1 division1 ?min2 max2 division2 ?... minN maxN divisionN??\"";
};
#
if {$argc} {
	foreach {e1 e2 e3} $ranges_shell {
		::nDRandom::setRange $e1 $e2 $e3;
	};
	puts stdout [join [::nDRandom::info] \n];
	puts stdout "output file:\t[pwd]/[::nDRandom::output $name_shell $option_shell]";
	unset name_shell option_shell ranges_shell;
};
