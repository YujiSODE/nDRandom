#ndrandom_sampleWeb2.tcl
#=====================
#
#xy coordinates of an origin
#x = [0.0,1.0] and division = 100
#y = [0.0,1.0] and division = 100
#
#distances from the origin
#R1 = [0.1,3.0] and division = 100
#R2 = [0.1,3.0] and division = 100
#R3 = [0.1,3.0] and division = 100
#
#horizontal angles
#Theta1 = [0.0,2*PI] and division = 100
#Theta2 = [0.0,2*PI] and division = 100
#Theta3 = [0.0,2*PI] and division = 100
#
#rgb colors
#r = [0.0,255.0] and division = 255
#g = [0.0,255.0] and division = 255
#b = [0.0,255.0] and division = 255
#=====================
#
source -encoding utf-8 nDRandom.tcl;
#
set PI 3.141592653589793;
set 2PI [expr {2.0*$PI}];
#
#loading data range, and output generator
#
#xy coordinates of origin
#x
::nDRandom::setRange 0.0 1.0 100;
#y
::nDRandom::setRange 0.0 1.0 100;
#
#distances from origin
#R1
::nDRandom::setRange 0.1 3.0 100;
#R2
::nDRandom::setRange 0.1 3.0 100;
#R3
::nDRandom::setRange 0.1 3.0 100;
#
#horizontal angles
#Theta1
::nDRandom::setRange 0.0 $2PI 100;
#Theta2
::nDRandom::setRange 0.0 $2PI 100;
#Theta3
::nDRandom::setRange 0.0 $2PI 100;
#
#rgb colors
#r
::nDRandom::setRange 0.0 255.0 255;
#g
::nDRandom::setRange 0.0 255.0 255;
#b
::nDRandom::setRange 0.0 255.0 255;
#
set filename [::nDRandom::output sampleWeb2 js];
puts stdout "\#filename: $filename";
#
