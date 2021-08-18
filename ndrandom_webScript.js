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
	let F1=()=>{},F2=()=>{},tId=0;
	//------------
	//
	//"Random Rectangles"
	//F1 is function to draw a rectangle area on the canvas tag
	F1=()=>{
		let slf=window.document,C=slf.getElementById('ndrandomCvs'),ctx=C.getContext('2d'),
			Rs=Math.sampleWeb_random(Math.random()),canvasW=C.width,canvasH=C.height,
			x0=0.0,y0=0.0,w=1.0,h=1.0;
		//
		//Rs: [x1 dx1 x2 dx2 ... x7 dx7] where Xi = xi+c*dxi and c is a constant
		//Rs[0] -> x1: relative x coordinate
		//Rs[2] -> x2: relative y coordinate
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
		//++++++++++++
		ctx.fillStyle=`rgb(${Math.floor(Rs[8])},${Math.floor(Rs[10])},${Math.floor(Rs[12])})`;
		//
		ctx.fillRect(x0,y0,w,h);
		//
		slf=C=ctx=Rs=canvasW=canvasH=x0=y0=w=h=null;
	};
	//------------
	//
	//"Random Triangular Planes"
	//F2 is function to draw a triangular plane on the canvas tag
	F2=()=>{
		let slf=window.document,C=slf.getElementById('ndrandomCvs2'),ctx=C.getContext('2d'),
			Rs=Math.sampleWeb2_random(Math.random()),canvasW=C.width,canvasH=C.height,
			x0=0.0,y0=0.0,X1=0.0,X2=0.0,X3=0.0,Y1=0.0,Y2=0.0,Y3=0.0;
		//
		//Rs: [x1 dx1 x2 dx2 ... x11 dx11] where Xi = xi+c*dxi and c is a constant
		//Rs[0] -> x1: relative x coordinate of an origin
		//Rs[2] -> x2: relative y coordinate of an origin
		//
		//Rs[4] -> x3: the first relative distance from the origin
		//Rs[6] -> x4: the second relative distance from the origin
		//Rs[8] -> x5: the third relative distance from the origin
		//
		//Rs[10] -> x6: the first horizontal angle
		//Rs[12] -> x7: the second horizontal angle
		//Rs[14] -> x8: the third horizontal angle
		//
		//Rs[16] -> x9: R value of RGB color
		//Rs[18] -> x10: G value of RGB color
		//Rs[20] -> x11: B value of RGB color
		//
		//P0 = (x0,y0)
		x0=canvasW*(Rs[0]+Rs[1]*0.3);
		y0=canvasH*(Rs[2]+Rs[3]*0.3);
		//
		//P1 = (X1,Y1)
		X1=x0+canvasW*(Rs[4]+Rs[5]*0.3)*Math.cos(Rs[10]+Rs[11]*0.3)*0.1;
		Y1=y0+canvasH*(Rs[4]+Rs[5]*0.3)*Math.sin(Rs[10]+Rs[11]*0.3)*0.1;
		//
		//P2 = (X2,Y2)
		X2=x0+canvasW*(Rs[6]+Rs[7]*0.3)*Math.cos(Rs[12]+Rs[13]*0.3)*0.1;
		Y2=y0+canvasH*(Rs[6]+Rs[7]*0.3)*Math.sin(Rs[12]+Rs[13]*0.3)*0.1;
		//
		//P3 = (X3,Y3)
		X3=x0+canvasW*(Rs[8]+Rs[9]*0.3)*Math.cos(Rs[14]+Rs[15]*0.3)*0.1;
		Y3=y0+canvasH*(Rs[8]+Rs[9]*0.3)*Math.sin(Rs[14]+Rs[15]*0.3)*0.1;
		//
		//++++++++++++
		ctx.fillStyle=`rgb(${Math.floor(Rs[16])},${Math.floor(Rs[18])},${Math.floor(Rs[20])})`;
		//
		//triangular plane: (P1,P2,P3)
		//P1 -> P2, P2 -> P3, P3 -> P1
			//
			//### to show projections ###
			// ctx.strokeStyle=`rgb(${Math.floor(Rs[16])},${Math.floor(Rs[18])},${Math.floor(Rs[20])})`;
			// ctx.beginPath();
			// ctx.moveTo(x0,y0);
			// ctx.lineTo(X1,Y1);
			// ctx.moveTo(x0,y0);
			// ctx.lineTo(X2,Y2);
			// ctx.moveTo(x0,y0);
			// ctx.lineTo(X3,Y3);
			// ctx.stroke();
			//##########################
		//
		ctx.beginPath();
		ctx.moveTo(X1,Y1);
		ctx.lineTo(X2,Y2);
		ctx.lineTo(X3,Y3);
		ctx.closePath();
		//
		ctx.fill();
		//
		slf=C=ctx=Rs=canvasW=canvasH=x0=y0=X1=X2=X3=Y1=Y2=Y3=null;
	};
	//------------
	//
	tId=setInterval(()=>{F1();F2();},delay);
})(400);
