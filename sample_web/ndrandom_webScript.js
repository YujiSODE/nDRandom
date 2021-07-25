/*nDRandom
*ndrandom_webScript.js
*===================================================================
*	Copyright (c) 2021 Yuji SODE <yuji.sode@gmail.com>
*
*	This software is released under the MIT License.
*	See LICENSE or http://opensource.org/licenses/mit-license.php
*===================================================================
*/
((delay)=>{
	let F=()=>{},tId=0;
	//F is function to draw a rectangle area on the canvas tag
	F=()=>{
		let slf=window.document,C=slf.getElementById('ndrandomCvs'),ctx=C.getContext('2d'),
			Rs=Math.sampleWeb_random(Math.random()),canvasW=C.width,canvasH=C.height,
			x0=0.0,y0=0.0,w=1.0,h=1.0;
		//
		//Rs: [x1 dx1 x2 dx2 ... x7 dx7] where Xi = xi+c*dxi and c is a constant
		//Rs[0] -> x1: relative x
		//Rs[2] -> x2: relative y
		//Rs[4] -> x3: relative width
		//Rs[6] -> x4: relative height
		//Rs[8] -> x5: R value of RGB color
		//Rs[10] -> x6: G value of RGB color
		//Rs[12] -> x7: B value of RGB color
		//
		x0=canvasW*(Rs[0]+Rs[1]*0.3);
		y0=canvasH*(Rs[2]+Rs[3]*0.3);
		w=canvasW*0.1*(Rs[4]+Rs[5]*0.3);
		h=canvasH*0.1*(Rs[6]+Rs[7]*0.3);
		//
		ctx.fillStyle=`rgb(${Math.floor(Rs[8])},${Math.floor(Rs[10])},${Math.floor(Rs[12])})`;
		//
		ctx.fillRect(x0,y0,w,h);
		//
		slf=C=ctx=Rs=canvasW=canvasH=x0=y0=w=h=null;
	};
	tId=setInterval(F,delay);
})(400);
