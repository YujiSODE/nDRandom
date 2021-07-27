#ndrandom_sampleWeb.tcl
#=====================
#
#xy coordinates
#x=[0.0,1.0] and dx=100
#y=[0.0,1.0] and dy=100
#
#width and height
#w=[0.1,3.0] and dw=100
#h=[0.1,3.0] and dh=100
#
#rgb colors
#r=[0.0,255.0] and dr=255
#g=[0.0,255.0] and dg=255
#b=[0.0,255.0] and db=255
#=====================
#
source -encoding utf-8 nDRandom.tcl;
#
#loading data range, and output generator
#x
::nDRandom::setRange 0.0 1.0 100;
#y
::nDRandom::setRange 0.0 1.0 100;
#w
::nDRandom::setRange 0.1 3.0 100;
#h
::nDRandom::setRange 0.1 3.0 100;
#r
::nDRandom::setRange 0.0 255.0 255;
#g
::nDRandom::setRange 0.0 255.0 255;
#b
::nDRandom::setRange 0.0 255.0 255;
#
set filename [::nDRandom::output sampleWeb js];
puts stdout "\#filename: $filename";
#
