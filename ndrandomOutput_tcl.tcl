#nDRandom
#ndrandomOutput_tcl.tcl
#
##===================================================================
#	Copyright (c) 2021 Yuji SODE <yuji.sode@gmail.com>
#
#	This software is released under the MIT License.
#	See LICENSE or http://opensource.org/licenses/mit-license.php
##===================================================================
#module to output as Tcl file
#it requires namespace `::nDRandom`
#
#=== option ===
# - option: tcl
#
#=== generated script ===
#the generated script is output in the current directory
#generated script format: "${NAME}_info()" and "${NAME}_random(double)" in math functions
#
# - ${NAME}_info(): it returns preset data
# - ${NAME}_random(double): it returns a random coordinates in n-th dimensions
#   - $double: a real number in range (0.0, 1.0)
#   - output coordinates: {x1 dx1 x2 dx2 ... xn dxn} where Xi = xi+k*dxi and k is a constant
##===================================================================
#
set auto_noexec 1;
package require Tcl 8.6;
#--------------------------------------------------------------------
#
#*** <namespace ::nDRandom> ***
#
#procedure that outputs a random coordinates generater in the current directory
proc ::nDRandom::output\$ {NAME} {
	# - $NAME: a keyword to determine output file name and its functions
	###
	set NAME [regsub -all {[.,:;\s]} $NAME _];
	#
	##===================================================================
	#+++ variables +++
	#
	#___[list of preset data]___
	#INFO: {{ID MIN MAX divisions dx} {ID1 MIN1 MAX1 d1 dx1} ... {IDn MINn MAXn dn dxn}}
	set INFO [::nDRandom::info];
	#------------
	#
	#___[if no data is available]___
	if {[llength $INFO]<2} {return -code error "NO DATA AVAILABLE";};
	#------------
	#
	#___[list of parameters]___
	#VARS: {min1 d1 d1 dx1 min2 d2 d1*d2 dx2 ... minj dj d1*d2*...*dj dxj}
	set VARS [::nDRandom::vars];
	# => use `foreach {e1 e2 e3 e4} $VARS { ... };`
	#------------
	#
	#___[number of divided cells]___
	set CELLS [::nDRandom::cells];
	#------------
	##===================================================================
	#+++ output +++
	#
	#the generated script is output in the current directory
	#generated script format: "${NAME}_info()" and "${NAME}_random(double)" in math functions
	#
		#___[filename to output]___
		set FILENAME "${NAME}.tcl";
		#------------
	#
	set i 0;
	set c [open "[pwd]/${FILENAME}" w];
	#
		#___[output encoding]___
		fconfigure $c -encoding utf-8;
		#------------
		#
		#___[output timestamp and data]___
		puts -nonewline $c "\#timestamp:[clock format [clock seconds]]";
		puts -nonewline $c "\n\#[join $INFO \n\#]";
		#------------
		#
		#___[output script: info]___
		puts -nonewline $c "\n\#it returns preset data";
		#
		puts -nonewline $c "\nproc ::tcl::mathfunc::${NAME}_info \{\} \{return \{[join $INFO \n]\}\;\}\;";
		#------------
		#
		#___[output script: random]___
		puts -nonewline $c "\n\#it returns a random coordinates in n-th dimensions";
		puts -nonewline $c "\n\# - \$double: a real number in range \(0.0, 1.0\)";
		puts -nonewline $c "\n\#output coordinates: \{x1 dx1 x2 dx2 ... xn dxn\} where Xi = xi+k*dxi and k is a constant";
		#
		puts -nonewline $c "\nproc ::tcl::mathfunc::${NAME}_random \{double\} \{";
			#
			puts -nonewline $c "\n\tset result \{\}\;";
			puts -nonewline $c "set idx 0;";
			puts -nonewline $c "set block 0;";
			#
			#$u = [0.0, 1.0], then $u => index
			puts -nonewline $c "set u \[expr \{\$double<0?0.0:\$double\}\]\;";
			puts -nonewline $c "set u \[expr \{\$double>1?1.0:\$double\}\]\;";
			puts -nonewline $c "set u \[expr \{int\(floor\(\$u*$CELLS\)\)\}\]\;";
			#
			#VARS: {min1 d1 d1 dx1 min2 d2 d1*d2 dx2 ... minj dj d1*d2*...*dj dxj}
			foreach {e1 e2 e3 e4} $VARS {
				#-----------------
				#$e1: j-th min
				#$e2: j-th division
				#$e3: ∏(di) = d1*d2*...*dj
				#$e4: j-th dx
				#-----------------
				#
				#($i<1)? {$idx = $u%$e2}: {$idx = $block%$e2}
				if {$i<1} {
					puts -nonewline $c "\n\tset idx \[expr \{\$u%$e2\}\]\;";
				} else {
					puts -nonewline $c "\n\tset idx \[expr \{\$block%$e2\}\]\;";
				};
				#
				#$block = ceil($u/$e3) := ceil(idx/∏(di))
				puts -nonewline $c "set block \[expr \{int\(ceil\(\$u/$e3\)\)\}\]\;";
				#
				#$e1+$e4*$idx := min+dx*idx
				puts -nonewline $c "lappend result \[expr \{$e1+$e4*\$idx\}\]\;";
				#$e4 := dx
				puts -nonewline $c "lappend result $e4\;";
				#
				incr i 1;
			};
			#
			puts -nonewline $c "\n\tunset idx block\;";
			puts -nonewline $c "return \$result\;";
			#
		puts -nonewline $c "\n\}\;";
		#------------
	#===============
	close $c;unset c;
	#
	unset INFO VARS CELLS;
	return $FILENAME;
};
