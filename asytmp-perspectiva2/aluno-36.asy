if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="aluno-36";
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

size(5cm);

currentprojection=orthographic(.75,1,.5);
currentlight.background=box2;


triple A = (.4,.4,.35);
triple B = (.4,.7,.35);
triple C = (.7,.7,.35);
triple D = (.7,.4,.35);

triple E = (A+(0,0,.1));
triple F = (B+(0,0,.1));
triple G = (E+(.1,0,0));
triple H = (F+(.1,0,0));

triple I = (C+(0,0,.3));
triple J = (H+(0,0,.2));

triple K = (D+(0,0,.4));
triple L = (G+(0,0,.3));

triple M = (K+(0,.1,0));
triple N = (L+(0,.1,0));

draw(B -- C -- I -- J -- H -- F -- cycle);

draw(C -- D -- K -- M -- I -- cycle);
draw(D -- K -- L -- G -- E -- A -- cycle);
draw(K -- L -- N -- M -- cycle);
draw(M -- N -- J -- I -- cycle);

draw (A -- B -- C -- D -- cycle);
draw (E -- F -- H -- G -- cycle);
draw (A -- B -- F -- E -- cycle);

draw(surface(B -- C -- I -- J -- H -- F -- cycle), verde*80);

draw(surface(C -- D -- K -- M -- I -- cycle), verde*80);
draw(surface(D -- K -- L -- G -- E -- A -- cycle), verde*80);
draw(surface(K -- L -- N -- M -- cycle), verde*80);
draw(surface(M -- N -- J -- I -- cycle), verde*80);

draw (surface(A -- B -- C -- D -- cycle), verde*80);
draw (surface(E -- F -- H -- G -- cycle), verde*80);
draw (surface(A -- B -- F -- E -- cycle), verde*80);

draw (surface(H -- J -- N --L -- G -- cycle), verde*80);


triple x = (C - (.7,0,0));
triple w = (D - (.7,0,0));
triple p = (K - (.7,0,0));
triple q = (M - (.7,0,0));
triple y = (I - (.7,0,0));
triple z = (E - (.4,0,0));
triple u = (F - (.4,0,0));

draw (x -- w -- p --q --y -- cycle);
draw (z -- u, dashed);

draw (shift(1,0,0)*(x -- w -- p --q --y -- cycle));
draw (shift(1,0,0)*(z -- u));

triple x1 = (A + (0,-.4,0));
triple w1 = (D + (0,-.4,0));
triple p1 = (E + (0,-.4,0));
triple q1 = (G + (0,-.4,0));
triple y1 = (K + (0,-.4,0));
triple z1 = (L + (0,-.4,0));
triple u1 = (I + (0,-.7,0));
triple v1 = (J + (0,-.7,0));

draw (x1 -- w1 -- y1 -- z1 --q1 -- p1 -- cycle);
draw (u1 -- v1);

draw (shift(0,1,0)*(x1 -- w1 -- y1 -- z1 --q1 -- p1 -- cycle));
draw (shift(0,1,0)*(u1 -- v1), dashed);

triple x2 = (A + (0,0,-.35));
triple w2 = (B + (0,0,-.35));
triple p2 = (C + (0,0,-.35));
triple q2 = (D + (0,0,-.35));
triple y2 = (G + (0,0,-.45));
triple z2 = (H + (0,0,-.45));
triple u2 = (M + (0,0,-.75));
triple v2 = (N + (0,0,-.75));

draw (x2 -- w2 -- p2 -- q2 -- cycle);
draw (y2 -- z2);
draw (u2 -- v2);

draw (shift(0,0,1)*(x2 -- w2 -- p2 -- q2 -- cycle));
draw (shift(0,0,1)*(y2 -- z2), dashed);
draw (shift(0,0,1)*(u2 -- v2), dashed);

triple a = (0,0,0);
triple b = (1,0,0);
triple c = (1,1,0);
triple d = (0,1,0);

triple e = (0,0,1);
triple f = (1,0,1);
triple g = (1,1,1);
triple h = (0,1,1);

draw ((a -- b -- f -- e -- cycle));
draw ((a -- d -- h -- e -- cycle));
draw ((a -- b -- c -- d -- cycle));
draw ((b -- c -- g -- f -- cycle));
draw ((c -- d -- h -- g -- cycle));
