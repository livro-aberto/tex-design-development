if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="aluno-58";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=false;
settings.embed=false;
settings.toolbar=true;

import three;
import graph3;
import solids;
import math;
import labelpath3;
import labelpath;
settings.render=16;
//attach=true;

pen azul = rgb(0,94/255,176/255); //azul
pen verde = rgb(75/255,173/255,49/255); //verde
pen vinho = rgb(183/255,13/255,40/255); //vinho
pen laranja = rgb(236/255,107/255,16/255); //laranja
pen agua = rgb(0,165/255,157/255); //verde agua
pen box2 = rgb(240/255,238/255,201/255);


texpreamble("\usepackage{fontspec}\setmainfont{Exo2-Light}");

size(4cm);
currentlight.background=box2;
currentprojection=perspective(.5,.5,1);

triple a = (0,0,0);
triple b = (1,0,0);
triple c = (1,1,0);
triple d = (0,1,0);

triple e = (0,0,1);
triple f = (1,0,1);
triple g = (1,1,1);
triple h = (0,1,1);

draw (a -- b -- c -- d -- cycle);
draw (e -- f -- g -- h -- cycle);
draw (a -- b -- f -- e -- cycle);
draw (c -- d -- h -- g -- cycle);

triple a1 = (0.1,0.1,0.1);
triple b1 = (.9,0.1,0.1);
triple c1 = (.9,.9,0.1);
triple d1 = (0.1,.9,0.1);

triple e1 = (0.1,0.1,.9);
triple f1 = (.9,0.1,.9);
triple g1 = (.9,.9,.9);
triple h1 = (0.1,.9,.9);

//draw (a1 -- b1 -- c1 -- d1 -- cycle);
//draw (e1 -- f1 -- g1 -- h1 -- cycle);
//draw (a1 -- b1 -- f1 -- e1 -- cycle);
//draw (c1 -- d1 -- h1 -- g1 -- cycle);

triple a2 = (0.1,0.1,0);
triple b2 = (.9,0.1,0);
triple c2 = (.9,.9,0);
triple d2 = (0.1,.9,0);

draw (a2 -- b2 -- c2 -- d2 -- cycle);

triple e2 = (0.1,0.1,1);
triple f2 = (.9,0.1,1);
triple g2 = (.9,.9,1);
triple h2 = (0.1,.9,1);

draw (e2 -- f2 -- g2 -- h2 -- cycle);

triple i2 = (0.1,0,.9);
triple j2 = (.9,0,.9);
triple k2 = (.9,0,.1);
triple l2 = (0.1,0,.1);

draw (i2 -- j2 --k2 -- l2 -- cycle);

triple m2 = (0.1,1,.9);
triple n2 = (.9,1,.9);
triple o2 = (.9,1,.1);
triple p2 = (0.1,1,.1);

draw (m2 -- n2 -- o2 -- p2 -- cycle);

triple q2 = (0,0.1,0.1);
triple r2 = (0,0.9,0.1);
triple s2 = (0,.9,.9);
triple t2 = (0,.1,.9);

draw (q2 -- r2 -- s2 --t2 -- cycle);

triple u2 = (1,0.1,0.1);
triple v2 = (1,0.9,0.1);
triple w2 = (1,.9,.9);
triple x2 = (1,.1,.9);

draw (u2 -- v2 -- w2 --x2 -- cycle);

draw (a -- a2 -- b2 -- b -- c -- c2 -- d2 -- d);
draw (e -- e2 -- f2 -- f -- g -- g2 -- h2 -- h);
draw (b -- u2 -- v2 -- c -- g -- w2 -- x2 -- f);
draw (a -- q2 -- r2 -- d -- h -- s2 -- t2 -- e);
draw (a -- l2 -- k2 -- b -- f -- j2 -- i2 -- e);
draw (d -- p2 -- o2 -- c -- g -- n2 -- m2 -- h);

draw (a2 -- l2 -- k2 -- b2);
draw (a2 -- l2 -- p2 -- d2);
draw (c2 -- o2 -- p2 -- d2);
draw (l2 -- q2 -- r2 -- p2);
draw (b2 -- k2 -- o2 -- c2);

draw (e2 -- i2 -- m2 -- h2 -- cycle);
draw (e2 -- i2 -- j2 -- f2 -- cycle);
draw (i2 -- t2 -- s2 -- m2 -- cycle);
draw (f2 -- g2 -- n2 -- j2 -- cycle);
draw (j2 -- x2 -- u2 -- k2 -- cycle);
draw (v2 -- o2 -- n2 -- w2 -- cycle);

draw (surface(a2 -- l2 -- k2 -- b2 -- cycle), verde*80);
draw (surface(a2 -- l2 -- p2 -- d2 -- cycle), verde*80);
draw (surface(c2 -- o2 -- p2 -- d2 -- cycle), verde*80);
draw (surface(l2 -- q2 -- r2 -- p2 -- cycle), verde*80);
draw (surface(b2 -- k2 -- o2 -- c2 -- cycle), verde*80);



draw (surface(a -- l2 -- k2 -- b -- cycle), verde*80);
draw (surface(b -- u2 -- v2 -- c -- cycle), verde*80);
draw (surface(c -- o2 -- p2 -- d -- cycle), verde*80);
draw (surface(a -- q2 -- r2 -- d -- cycle), verde*80);

draw (surface(b -- u2 -- v2 -- c -- cycle), verde*80);
draw (surface(b -- f -- x2 -- u2 -- cycle), verde*80);
draw (surface(f -- g -- w2 -- x2 -- cycle), verde*80);
draw (surface(g -- c -- v2 -- w2 -- cycle), verde*80);

draw (surface(c -- g -- n2 -- o2 -- cycle), verde*80);
draw (surface(g -- h -- m2 -- n2 -- cycle), verde*80);
draw (surface(h -- d -- p2 -- m2 -- cycle), verde*80);

draw (surface(e -- f -- f2 -- e2 -- cycle), verde*80);
draw (surface(f -- f2 -- g2 -- g -- cycle), verde*80);
draw (surface(g -- g2 -- h2 -- h -- cycle), verde*80);
draw (surface(h -- h2 -- e2 -- e -- cycle), verde*80);

draw (surface(a -- a2 -- b2 -- b -- cycle), verde*80);
draw (surface(b -- b2 -- c2 -- c -- cycle), verde*80);
draw (surface(c -- c2 -- d2 -- d -- cycle), verde*80);
draw (surface(d -- d2 -- a2 -- a -- cycle), verde*80);

draw (surface(a -- e -- i2 -- l2 -- cycle), verde*80);
draw (surface(e -- f -- j2 -- i2 -- cycle), verde*80);
draw (surface(b -- f -- j2 -- k2 -- cycle), verde*80);

draw (surface(e -- h -- s2 -- t2 -- cycle), verde*80);
draw (surface(h -- d -- r2 -- s2 -- cycle), verde*80);
draw (surface(e -- a -- q2 -- t2 -- cycle), verde*80);

draw (u2 -- k2 -- j2 -- x2);

draw (surface(u2 -- k2 -- j2 -- x2 -- cycle), verde*80);
draw (surface(k2 -- u2 -- v2 -- o2 -- cycle), verde*80);
draw (surface(l2 -- q2 -- t2 -- i2 -- cycle), verde*80);
draw (surface(e2 -- i2 -- m2 -- h2 -- cycle), verde*80);
draw (surface(e2 -- i2 -- j2 -- f2 -- cycle), verde*80);
draw (surface(i2 -- t2 -- s2 -- m2 -- cycle), verde*80);
draw (surface(s2 -- m2 -- p2 -- r2 -- cycle), verde*80);
draw (surface(h2 -- g2 -- n2 -- m2 -- cycle), verde*80);
draw (surface(f2 -- g2 -- n2 -- j2 -- cycle), verde*80);
draw (surface(j2 -- n2 -- w2 -- x2 -- cycle), verde*80);
draw (surface(j2 -- x2 -- u2 -- k2 -- cycle), verde*80);
draw (surface(v2 -- o2 -- n2 -- w2 -- cycle), verde*80);

draw((.5,.5,1.5) -- (.5,.5,1.2), arrow=Arrow3,blue);

