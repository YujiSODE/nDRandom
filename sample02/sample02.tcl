#timestamp:Sun Jul 18 13:38:49 JST 2021
#ID MIN MAX divisions dx
#x1 0 100 1000 0.1
#x2 0 100 1000 0.1
#x3 0 100 1000 0.1
#it returns preset data
proc ::tcl::mathfunc::sample02_info {} {return {ID MIN MAX divisions dx
x1 0 100 1000 0.1
x2 0 100 1000 0.1
x3 0 100 1000 0.1};};
#it returns a random coordinates in n-th dimensions
# - $double: a real number in range (0.0, 1.0)
#output coordinates: {x1 dx1 x2 dx2 ... xn dxn} where Xi = xi+k*dxi and k is a constant
proc ::tcl::mathfunc::sample02_random {double} {
	set result {};set idx 0;set block 0;set u [expr {$double<0?0.0:$double}];set u [expr {$double>1?1.0:$double}];set u [expr {int(floor($u*1000000000))}];
	set idx [expr {$u%1000}];set block [expr {int(ceil($u/1000.0))}];lappend result [expr {0.0+0.1*$idx}];lappend result 0.1;
	set idx [expr {$block%1000}];set block [expr {int(ceil($u/1000000.0))}];lappend result [expr {0.0+0.1*$idx}];lappend result 0.1;
	set idx [expr {$block%1000}];set block [expr {int(ceil($u/1000000000.0))}];lappend result [expr {0.0+0.1*$idx}];lappend result 0.1;
	unset idx block;return $result;
};