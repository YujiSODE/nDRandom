//timestamp:Sun Jul 25 16:02:55 JST 2021
//ID MIN MAX divisions dx
//x1 0.0 1.0 100 0.01
//x2 0.0 1.0 100 0.01
//x3 0.1 3.0 100 0.028999999999999998
//x4 0.1 3.0 100 0.028999999999999998
//x5 0.0 255.0 255 1.0
//x6 0.0 255.0 255 1.0
//x7 0.0 255.0 255 1.0
//it returns preset data
Math.sampleWeb_info=function(){return `ID MIN MAX divisions dx
x1 0.0 1.0 100 0.01
x2 0.0 1.0 100 0.01
x3 0.1 3.0 100 0.028999999999999998
x4 0.1 3.0 100 0.028999999999999998
x5 0.0 255.0 255 1.0
x6 0.0 255.0 255 1.0
x7 0.0 255.0 255 1.0`;};
//it returns a random coordinates in n-th dimensions
// - double: a real number in range (0.0, 1.0)
//output coordinates: [x1 dx1 x2 dx2 ... xn dxn] where Xi = xi+c*dxi and c is a constant
Math.sampleWeb_random=function(double){
	let result=[],idx=0,block=0,u=0.0;u=double<0?0.0:double;u=double>1?1.0:double;u=Math.floor(u*1658137500000000);
	idx=u%100;block=Math.ceil(u/100.0);result.push(0.0+0.01*idx);result.push(0.01);
	idx=block%100;block=Math.ceil(u/10000.0);result.push(0.0+0.01*idx);result.push(0.01);
	idx=block%100;block=Math.ceil(u/1000000.0);result.push(0.1+0.028999999999999998*idx);result.push(0.028999999999999998);
	idx=block%100;block=Math.ceil(u/100000000.0);result.push(0.1+0.028999999999999998*idx);result.push(0.028999999999999998);
	idx=block%255;block=Math.ceil(u/25500000000.0);result.push(0.0+1.0*idx);result.push(1.0);
	idx=block%255;block=Math.ceil(u/6502500000000.0);result.push(0.0+1.0*idx);result.push(1.0);
	idx=block%255;block=Math.ceil(u/1658137500000000.0);result.push(0.0+1.0*idx);result.push(1.0);
	u=idx=block=null;return result;
};