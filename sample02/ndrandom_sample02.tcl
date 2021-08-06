#ndrandom_sample02.tcl
#=====================
#
#u = (A,B,C)
#A = [0,100] and division = 1000
#B = [0,100] and division = 1000
#C = [0,100] and division = 1000
#probability p = p(A<B&&C<B)
#=====================
#
source -encoding utf-8 nDRandom.tcl;
#
#loading data range, and output generator
#A
::nDRandom::setRange 0 100 1000;
#B
::nDRandom::setRange 0 100 1000;
#C
::nDRandom::setRange 0 100 1000;
#
set filename [::nDRandom::output sample02 tcl];
puts stdout "\#filename: $filename";
#
source -encoding utf-8 $filename;
puts stdout [expr {sample02_info()}];
#=====================
#
#---------
set u {};
set A 0.0;
set B 0.0;
set C 0.0;
set p 0.0;
#---------
#
#---------
#number of sample size
set sampleSize 1000;
#
#number of sample set
set sampleSet 10;
#---------
#
set i 0;
set iSet 0;
set R 0.0;
#
while {$iSet<$sampleSet} {
	#
	set i 0;
	set R [expr {rand()}];
	#
	while {$i<$sampleSize} {
		#
		set u [expr {sample02_random(rand())}];
		#
		#A
		set A [expr {double([lindex $u 0])+$R*double([lindex $u 1])}];
		#---------
		#
		#B
		set B [expr {double([lindex $u 2])+$R*double([lindex $u 3])}];
		#---------
		#
		#C
		set C [expr {double([lindex $u 4])+$R*double([lindex $u 5])}];
		#---------
		#
		set p [expr {$A<$B&&$C<$B?$p+1.0:$p}];
		#
		incr i 1;
	};
	#
	incr iSet 1;
};
#
puts stdout "p(A<B&&C<B) = [expr {$p/double($sampleSize*$sampleSet)}]";
puts stdout "sample: [format %e $sampleSize] x $sampleSet sets";
