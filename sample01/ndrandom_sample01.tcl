#ndrandom_sample01.tcl
#=====================
#
#u = [0,100] and division = 1000
#A,B and C = u
#probability p = p(A<B&&C<B)
#=====================
#
source -encoding utf-8 nDRandom.tcl;
#
#loading data range, and output generator
::nDRandom::setRange 0 100 1000;
set filename [::nDRandom::output sample01 tcl];
puts stdout "\#filename: $filename";
#
source -encoding utf-8 $filename;
puts stdout [expr {sample01_info()}];
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
		set u [expr {sample01_random(rand())}];
		set A [expr {double([lindex $u 0])+$R*double([lindex $u 1])}];
		#---------
		set u [expr {sample01_random(rand())}];
		set B [expr {double([lindex $u 0])+$R*double([lindex $u 1])}];
		#---------
		set u [expr {sample01_random(rand())}];
		set C [expr {double([lindex $u 0])+$R*double([lindex $u 1])}];
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
