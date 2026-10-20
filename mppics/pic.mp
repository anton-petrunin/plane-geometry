input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[a4paper,10pt]{article}
\usepackage{../paper-ru}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";


beginfig(10) 
save u,p;
path p[];
u:=1.2cm;

z.p=origin;
z.q=(2,0)*u;
z.x=(1.4,1)*u;
z.xx=z.x yscaled -1;

draw z.p--z.x;
draw z.p--z.xx;
draw z.q--z.x;
draw z.q--z.xx;



dOt z.p,z.q,z.x,z.xx;


label.lft (btex $p$ etex,  z.p);
label.rt (btex $q$ etex,  z.q);
label.top (btex $x$ etex,  z.x);
label.bot (btex $\sigma(x)$ etex,  z.xx);
whitelabel (btex $r$ etex,  .5[z.p,z.x]);
whitelabel (btex $r$ etex,  .5[z.p,z.xx]);
whitelabel (btex $s$ etex,  .5[z.q,z.x]);
whitelabel (btex $s$ etex,  .5[z.q,z.xx]);
endfig;

beginfig(20)
save u,p;
path p[];
u:=.45cm;

z.p=(-3,0)*u;
z.q=z.p xscaled -1;
z.m1=(0,2)*u;
z.x1=(-1,1.4)*u;
z.y1=z.x1 xscaled -1;
z.n1=z.x1+z.y1-z.m1;

z.m2=z.m1 yscaled -1;
z.x2=z.x1 yscaled -1;
z.y2=z.y1 yscaled -1;
z.n2=z.n1 yscaled -1;

p1=z.p..z.x1..z.m1..z.y1..z.q;
p2=p1 yscaled -1;
p11= subpath (1,3) of p2 shifted (z.x1-z.x2);


draw p1;
draw p2;
draw p11;

dOt z.p,z.q,z.x1,z.y1,z.m1,z.n1,z.m2;

label.lft (btex $p$ etex,  z.p);
label.rt (btex $q$ etex,  z.q);
label.top (btex $m_1$ etex,  z.m1);
label.bot (btex $m_2$ etex,  z.m2);
label.bot (btex $m_3$ etex,  z.n1);
label.ulft (btex $\bar x$ etex,  z.x1);
label.urt (btex $\bar y$ etex,  z.y1);

endfig;

beginfig(30)
save u,p;
path p[];
u:=1.2cm;

z.x=(-1,0)*u;
z.y=origin;
z.z=(1,.5)*u;
z.zz=z.z yscaled -1;
z.mz=z.z rotated angle(z.zz);

p1=z.x--z.y{(1,0)}..z.z;
p2 =p1 yscaled -1;
p3=ddarc(z.z,z.mz,z.zz)(-10,-10);

draw p1;
draw subpath (1,2) of p2;

drawarrow p3 dashed evenly;

dOt z.x,z.y,z.z,z.zz;

label.lft (btex $x$ etex,  z.x);
label.bot (btex $y$ etex,  z.y);
label.rt (btex $z$ etex,  z.z);
label.rt (btex $z'$ etex,  z.zz);
label.rt (btex $\sigma$ etex,  z.mz);
endfig;

beginfig(40)
save u,p;
path p[];
u:=1.2cm;

z.p=(-1,0)*u;
z.q=-z.p;
z.x=z.q rotated -25;
z.y=z.q rotated 25;
z.z=z.p rotated -25;

p1=z.p{(0,1)}..z.z;
p2=z.q{(0,1)}..z.y;
p3=z.q{(0,-1)}..z.x;
p4=z.x{-z.x}..{z.y}z.y;

draw ddarc(z.p,z.q,z.x)(10,10);
drawdblarrow subpath (.15,.85) of p4 dashed evenly;

dOt z.p,z.q,z.x,z.y,z.z;

rimmark(p1,p2,p3);

label.lft (btex $p$ etex,  z.p);
label.rt (btex $m$ etex,  z.q);
label.lrt (btex $x$ etex,  z.x);
label.urt (btex $y$ etex,  z.y);
label.ulft (btex $z$ etex,  z.z);
label.bot (btex $\gamma$ etex,  z.p rotated -90);
label.lft (btex $\sigma$ etex,  point .5 of p4);
endfig;

beginfig(50)
save u,p;
path p[];
u:=1.5cm;

z.x=(-1,0)*u;
z.y=origin;
z.z=(.7,0)*u;

p1=z.x{(1,1)}..{(1,-1)}z.y;
p2 =p1 yscaled -1;
p3=z.y--z.z;

draw p1;
draw p2;
draw p3;

dOt z.x,z.y,z.z;

label.lft (btex $x$ etex,  z.x);
label.bot (btex $y$ etex,  z.y+(1,0));
label.rt (btex $z$ etex,  z.z);
endfig;

beginfig(60)
save u,p;
path p[];
u:=1cm;

z.o=origin;
z.x=(3,1)*u;
z.xx=(1,1)*u;
z.y=(5,-.5)*u;
z.yy=z.xx rotated -80;

p1=-z.x..-z.xx..z.o..z.xx..z.x;
p2=-z.y..-z.yy..z.o..z.yy..z.y;

p3= z.xx..z.yy.. -z.xx.. -z.yy..cycle;

draw p1;
draw p2;
draw p3 dashed evenly;

dOt z.o,z.x,z.y,z.xx,z.yy,-z.x,-z.y,-z.xx,-z.yy;

label.rt (btex $x$ etex,  z.x);
label.rt (btex $y$ etex,  z.y);
label.lft (btex $x'$ etex,  -z.x);
label.lft (btex $y'$ etex,  -z.y);
label.top (btex $\bar x$ etex,  z.xx+(0,1));
label.bot (btex $\bar y$ etex,  z.yy+(0,-1));
label.bot (btex $\bar x'$ etex,  -z.xx+(0,-1));
label.top (btex $\bar y'$ etex,  -z.yy);
label.rt (btex $m$ etex,  z.o);
endfig;

beginfig(70)
save u,p;
path p[];
u:=1cm;

z.u0=(-1,0)*u;
z.u1=origin;
z.p0=(-.7,1.4)*u;
z.p1=(-.1,1.5)*u;
z.q0=2*z.u0-z.p0;
z.q1=-z.p1;

p0=z.q0--z.u0--z.p0;
p1=z.q1--z.u1--z.p1;
p2=p0 rotated 180;
p3=z.u0--z.u1;
p4=p3 rotated 180;

p10=z.p0{(1,-.4)}..{(1,.4)}z.p1;
p11=p10 rotated 180;
p20=z.q0{(1,.3)}..{(1,-.3)}z.q1;
p21=p20 rotated 180;

draw p0;
rimmark5(subpath (0,1) of p0,subpath (1,2) of p0);
for i=0 upto 3:
draw p0 shifted (2*(i+1)*(z.u1-z.u0));
draw p1 shifted (2*i*(z.u1-z.u0));
draw p10 shifted (2*i*(z.u1-z.u0));
draw p11 shifted (2*i*(z.u1-z.u0));
draw p20 shifted (2*i*(z.u1-z.u0));
draw p21 shifted (2*i*(z.u1-z.u0));
draw p3 shifted (2*i*(z.u1-z.u0));
draw p4 shifted (2*i*(z.u1-z.u0));
rimmark(p3 shifted (2*i*(z.u1-z.u0)),p4 shifted (2*i*(z.u1-z.u0)));
rimmark2(p10 shifted (2*i*(z.u1-z.u0)),p11 shifted (2*i*(z.u1-z.u0)));
rimmark3(p20 shifted (2*i*(z.u1-z.u0)),p21 shifted (2*i*(z.u1-z.u0)));
rimmark10(subpath (0,1) of p1 shifted (2*i*(z.u1-z.u0)),subpath (1,2) of p1 shifted (2*i*(z.u1-z.u0)));
rimmark5(subpath (0,1) of p0 shifted (2*(i+1)*(z.u1-z.u0)),subpath (1,2) of p0 shifted (2*(i+1)*(z.u1-z.u0)));
endfor

dOt z.u0,z.p0, z.q0;
for i=0 upto 3:
dOt z.u0 shifted (2*(i+1)*(z.u1-z.u0)),
z.u1 shifted (2*i*(z.u1-z.u0)),
z.p0 shifted (2*(i+1)*(z.u1-z.u0)),
z.p1 shifted (2*i*(z.u1-z.u0)),
z.q0 shifted (2*(i+1)*(z.u1-z.u0)),
z.q1 shifted (2*i*(z.u1-z.u0));
endfor

label.lft (btex $u_0$ etex,  z.u0);
label.llft (btex $u_1$ etex,  z.u1);
label.lrt (btex $\cdots$ etex,  (5,-2)+z.u1 shifted (2*(z.u1-z.u0)));
label.top (btex $p_0$ etex,  z.p0);
label.top (btex $p_1$ etex,  z.p1);
label.bot (btex $q_0$ etex,  z.q0);
label.bot (btex $q_1$ etex,  z.q1);
label.top (btex $p_2$ etex,  z.p0 shifted (2*(z.u1-z.u0)));
label.top (btex $\cdots$ etex,  (1,1)+z.p1 shifted (4*(z.u1-z.u0)));
label.bot (btex $q_2$ etex,  z.q0 shifted (2*(z.u1-z.u0)));
label.bot (btex $q_3$ etex,  z.q1 shifted (2*(z.u1-z.u0)));
label.bot (btex $\cdots$ etex,  (1,-2)+z.q0 shifted (6*(z.u1-z.u0)));
label.lrt (btex $u_2$ etex,  z.u1 shifted (z.u1-z.u0));
label.rt (btex $u_n$ etex,  z.u0 shifted (2*(3+1)*(z.u1-z.u0)));
label.top (btex $p_n$ etex,  (1,0)+z.p0 shifted (2*(3+1)*(z.u1-z.u0)));
label.bot (btex $q_n$ etex,  (1,0)+z.q0 shifted (2*(3+1)*(z.u1-z.u0)));

endfig;


beginfig(80)
save u,p;
path p[];
u:=1cm;

z.o=origin;
z.x=(2,.5)*u;
z.y=(2.3,-.7)*u;
z.xt=.4*z.x;
z.yt=.4*z.y;
z.ys=.7*z.y;

draw z.x--z.o--z.y;
draw z.ys--z.xt--z.yt dashed evenly;

dOt z.o,z.x,z.y,z.xt,z.yt,z.ys;

label.lft (btex $o$ etex,  z.o);
label.top (btex $x$ etex,  z.x);
label.top (btex $x_t$ etex,  z.xt);
label.bot (btex $y$ etex,  z.y);
label.bot (btex $y_t$ etex,  z.yt);
label.bot (btex $y_s$ etex,  z.ys);
endfig;

beginfig(90)
save u,p;
path p[];
u:=1cm;

z.o=origin;
z.x=(-4,0)*u;
z.y=(.7,2.5)*u;
z.z=(2.2,0)*u;
z.yy=z.y yscaled -1;
z.w=.4[z.x,z.y];
z.ww=.5*z.w;

p1=z.x--z.y--z.z--z.yy--cycle;

fill p1 withcolor .7;
draw p1 pensemibold;
draw z.o--z.w;
draw circle(z.o,z.ww) dashed evenly;
draw ddline(z.x,z.z)(.2,.4);


dOt z.o,z.x,z.y,z.z,z.yy,z.w,z.ww;

label.bot (btex $o$ etex,  z.o);
label.llft (btex $x$ etex,  z.x);
label.top (btex $y$ etex,  z.y);
label.lrt (btex $z$ etex,  z.z);
label.bot (btex $\sigma(y)$ etex,  z.yy);
label.ulft (btex $w$ etex,  z.w);
label.top (btex $\bar w$ etex,  z.ww);
label (btex $F$ etex,  z.y+(-5,-35));
label (btex $\sigma(F)$ etex,  z.yy+(-5,35));
label.top (btex $\ell$ etex,  1.2[z.x,z.z]);

endfig;

beginfig(100)
save u,p;
path p[];
u:=1.2cm;

z.o=origin;
z.p=(-1,0)*u;
z.q=-z.p;
z.u=(.4,1)*u;
z.v=whatever[z.p,z.u]=(0,whatever);
z.vv=-z.v;

draw ddline(z.p,z.q)(.2,.2);
draw z.p--z.u--z.q;
draw z.p--z.vv dashed evenly;
draw z.q--z.vv dashed evenly;
draw z.q--z.v dashed evenly;
draw z.v--z.vv;

rimmark(z.p--z.o,z.q--z.o);
rimmark2(z.p--z.vv,z.p--z.v,z.q--z.vv,z.q--z.v);

dOt z.p,z.q,z.o,z.v,z.vv,z.u;

label.lrt (btex $m$ etex,  z.o);
label.llft (btex $p$ etex,  z.p);
label.lrt (btex $q$ etex,  z.q);
label.top (btex $u$ etex,  z.u);
label.top (btex $v$ etex,  z.v);
label.bot (btex $v'$ etex,  z.vv);
label.top (btex $\ell$ etex,  1.15[z.p,z.q]);

endfig;

beginfig(110)
save u,p;
path p[];
u:=1.2cm;

z.o=origin;
z.p=(-1,0)*u;
z.q=-z.p;
z.v=(0,1)*u;
z.w=-z.v;
z.x=(.7,.4)*u;
z.xs=z.x yscaled -1;
z.xx=-z.x;
z.xr=z.x xscaled -1;

draw z.v--z.x--z.w--cycle;
draw z.w--z.xx--z.v--z.xs--z.w--z.xr--z.v dashed evenly;
draw ddline(z.p,z.q)(.2,.2);

rimmark(z.v--z.o,z.w--z.o);
rimmark2(z.v--z.x,z.w--z.x,z.v--z.xx,z.w--z.xx,z.v--z.xs,z.w--z.xs,z.v--z.xr,z.w--z.xr);

dOt z.o,z.v,z.w,z.x,z.xx,z.xr,z.xs;

label.lrt (btex $m$ etex,  z.o);
label.top (btex $v$ etex,  z.v);
label.bot (btex $w$ etex,  z.w);
label.rt (btex $x$ etex,  z.x);
label.rt (btex $\sigma(x)$ etex,  z.xs);
label.lft (btex $\rho(x)$ etex,  z.xr);
label.lft (btex $\theta(x)$ etex,  z.xx);
label.top (btex $\ell$ etex,  1.15[z.p,z.q]);
endfig;

end
