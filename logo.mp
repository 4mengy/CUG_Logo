%file logo.mp
%author MengY
%version 1.0
%date 2015.10.15
%brief 使用MetaPost生成CUG Logo矢量图

outputformat := "PostScript";
%outputformat := "svg";
%outputformat := "png";
outputtemplate := "%j-%c.ps";
prologues:=3;
%tracingall;

numeric style;
% 0 彩色  1 黑白透明
style = 0;

color bclo, bcoln;
if style = 0:
	bclo = (184/256,189/256,192/256);
	bcoln = white;
else:
	bclo = black;
	bcoln = black;
fi;

fontmapline "uhvb8a NimbusSanL-Bold <uhvb8a.pfb";
fontmapline "gbkhei64 GBK-SimHei-64 <gbkhei64.pfb";
fontmapline "gbkhei43 GBK-SimHei-43 <gbkhei43.pfb";
fontmapline "gbkhei40 GBK-SimHei-40 <gbkhei40.pfb";
fontmapline "gbkhei39 GBK-SimHei-39 <gbkhei39.pfb";
fontmapline "gbkhei60 GBK-SimHei-60 <gbkhei60.pfb";

beginfig(1)
numeric LineWidth, CircleRadiusB, CircleRadiusM, CircleRadiusS, CircleDiameterB, CircleDiameterM, CircleDiameterS;
LineWidth = 7.8;
CircleRadiusB = 275; CircleRadiusM = 219.8; CircleRadiusS = 145.3;
CircleDiameterB = CircleRadiusB * 2; CircleDiameterM = CircleRadiusM * 2; CircleDiameterS = CircleRadiusS * 2;
pair dot[];
dot1 = (CircleRadiusS, 0); dot2 = (CircleRadiusM, 0); dot3 = (168.7, 0); dot4 = (125.5, 75.7); dot5 = (149.5, 86.5); dot6 = (189.7, 109.3); dot7 = (48, 178.9); dot8 = (78, 188); dot9 = (95.5, 198); dot10 = (0, 173.5); dot11 = (0, 145.3); dot12 = (93.5, 111);
path hammer, clm, clb;
hammer = ((104.5, 81.1)...(40.5, 83.5)...(15, 78)..(10.5, 73.5){down}--(10.5, -132)--(-10.5, -132)--(-10.5, 73.5){up}..(-15, 78)..(-50, 83.5){left}..(-85.7, 83.5)--(-85.7, 103.9)...(0, 112.9){right}...(104.5, 81.1));
pickup pencircle scaled LineWidth;
%三个圆
clb = fullcircle scaled CircleDiameterB shifted (300, 300);
clm = fullcircle scaled CircleDiameterM shifted (300, 300);
if style = 0:
	fill clb withcolor white;
	fill clm withcolor (17/256,140/256,207/256);
fi;
draw clm withcolor bclo;
draw clb withcolor bclo;
draw fullcircle scaled CircleDiameterS shifted (300, 300) withcolor bclo;

draw (dot1--dot2) shifted (300, 300) withcolor bclo;
draw (dot1--dot2) xscaled -1 shifted (300, 300) withcolor bclo;
draw (dot10--dot11) shifted (300, 300) withcolor bclo;
draw (dot10--dot11) yscaled -1 shifted (300, 300) withcolor bclo;
%内部菱形
fill (0, 20.4)--(0, 0)--(-145.3, 0)--cycle shifted (300, 300) withcolor bclo;
fill (0, -20.4)--(0, 0)--(145.3, 0)--cycle shifted (300, 300) withcolor bclo;
if style = 0:
	fill (0, -20.4)--(0, 0)--(-145.3, 0)--cycle shifted (300, 300) withcolor white;
	fill (0, 20.4)--(0, 0)--(145.3, 0)--cycle shifted (300, 300) withcolor white;
fi;
draw ((0, 20.4)--(145.3, 0)--(0, -20.4)--(-145.3, 0)--(0, 20.4)) shifted (300, 300) withcolor bclo;
pickup pencircle scaled 4;
draw ((145.3, 0)--(-145.3, 0)) shifted (300, 300) withcolor bclo;
%画锤子
fill buildcycle(hammer) shifted (300, 300) withcolor bclo;
draw hammer shifted (300, 300) withcolor bclo;
linejoin:=mitered;

def reldraw(expr pa) =
	path a, b, c, d;
	a = pa;
	b = a xscaled -1;
	c = a scaled -1;
	d = a yscaled -1;
	draw a shifted (300, 300) withcolor bclo;
	draw b shifted (300, 300) withcolor bclo;
	draw c shifted (300, 300) withcolor bclo;
	draw d shifted (300, 300) withcolor bclo;
enddef;

pickup pencircle scaled LineWidth;
reldraw((dot8..dot5..dot3{down}));
reldraw((dot4..dot5..dot6));
reldraw((dot10..dot7..dot8..dot9));
reldraw((dot7{dir -48}..dot12));

draw char(165) infont "gbkhei64" scaled 5 xscaled 1.6 yscaled 0.8 rotated 52 shifted (98, 418) withcolor bclo;
draw char(73) infont "gbkhei43" scaled 5 xscaled 1.6 yscaled 0.8 rotated 32 shifted (145, 478) withcolor bclo;
draw char(47) infont "gbkhei40" scaled 5 xscaled 1.6 yscaled 0.8 rotated 15 shifted (218, 515) withcolor bclo;
draw char(159) infont "gbkhei64" scaled 5 xscaled 1.6 yscaled 0.8 rotated -15 shifted (308, 538) withcolor bclo;
draw char(140) infont "gbkhei39" scaled 5 xscaled 1.6 yscaled 0.8 rotated -32 shifted (385, 519) withcolor bclo;
draw char(198) infont "gbkhei60" scaled 5 xscaled 1.6 yscaled 0.8 rotated -52 shifted (455, 480) withcolor bclo;

def txp(expr basep, s, es, h, tr) =
	truecorners:=1;
	defaultfont:="uhvb8a";
	path basepic;
	picture pic, pt;
	string sp, ps;
	basepic := basep;
	for i =  (length s) step -1 until 1:
		ps:=substring(0,i) of s;
		pic:=thelabel(ps, (0,0)) scaled es;
		long[i] = 2*(xpart urcorner pic)+tr;
	endfor;
	long0 = tr;
	for i = 0 upto (length s) -1:
		sp:= substring(i,i+1) of s;
		x:= (long[i] + long[i+1])/2;
		pt:= thelabel(sp, (0,0)) scaled es shifted (x, 0);
		draw pt shifted (-xpart pt,h) rotated angle (direction (arctime x of basepic) of basepic) shifted (point (arctime xpart pt of basepic) of basepic) withcolor bclo;
	endfor;
enddef;

path base;
base = fullcircle scaled 495 rotated 162 shifted (300, 300);
txp(base, "CHINA UNIVERSITY OF GEOSCIENCES", 5, 0, 0);
draw "1952" infont "uhvb8a" scaled 3 yscaled 0.6 shifted (268, 95) withcolor bcoln;

endfig;