if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="professor-18";
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


texpreamble("\usepackage{fontspec}\setmainfont[Path=../../Fontes/]{Exo2-Light}");

size(8cm);

currentprojection=orthographic(1.5,1.5,1/2);

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

//draw(B -- C -- I -- J -- H -- F -- cycle);

//draw(C -- D -- K -- M -- I -- cycle);
//draw(D -- K -- L -- G -- E -- A -- cycle);
//draw(K -- L -- N -- M -- cycle);
//draw(M -- N -- J -- I -- cycle);

//draw (A -- B -- C -- D -- cycle);
//draw (E -- F -- H -- G -- cycle);
//draw (A -- B -- F -- E -- cycle);

//draw(surface(B -- C -- I -- J -- H -- F -- cycle), verde*80);

//draw(surface(C -- D -- K -- M -- I -- cycle), verde*80);
//draw(surface(D -- K -- L -- G -- E -- A -- cycle), verde*80);
//draw(surface(K -- L -- N -- M -- cycle), verde*80);
//draw(surface(M -- N -- J -- I -- cycle), verde*80);

//draw (surface(A -- B -- C -- D -- cycle), verde*80);
//draw (surface(E -- F -- H -- G -- cycle), verde*80);
//draw (surface(A -- B -- F -- E -- cycle), verde*80);

//triple x = (C - (.7,0,0));
//triple w = (D - (.7,0,0));
//triple p = (K - (.7,0,0));
//triple q = (M - (.7,0,0));
//triple y = (I - (.7,0,0));
//triple z = (E - (.4,0,0));
//triple u = (F - (.4,0,0));

//draw (x -- w -- p --q --y -- cycle);
//draw (z -- u, dashed);

//triple x1 = (A + (0,-.4,0));
//triple w1 = (D + (0,-.4,0));
//triple p1 = (E + (0,-.4,0));
//triple q1 = (G + (0,-.4,0));
//triple y1 = (K + (0,-.4,0));
//triple z1 = (L + (0,-.4,0));
//triple u1 = (I + (0,-.7,0));
//triple v1 = (J + (0,-.7,0));

//draw (x1 -- w1 -- y1 -- z1 --q1 -- p1 -- cycle);
//draw (u1 -- v1);

//pair A = (.4,.4);
//pair B = (.4,.5);
//pair C = (.3,.7);
//pair D = (.7,.4);

//draw(A--B--C--D);

//triple E = (A+(0,0,.1));
//triple F = (B+(0,0,.1));
//triple G = (E+(.1,0,0));
//triple H = (F+(.1,0,0));

//triple I = (C+(0,0,.3));
//triple J = (H+(0,0,.2));

//triple K = (D+(0,0,.4));
//triple L = (G+(0,0,.3));

//triple M = (K+(0,.1,0));
//triple N = (L+(0,.1,0));

//triple x2 = (A + (0,0,-.35));
//triple w2 = (B + (0,0,-.35));
//triple p2 = (C + (0,0,-.35));
//triple q2 = (D + (0,0,-.35));
//triple y2 = (G + (0,0,-.45));
//triple z2 = (H + (0,0,-.45));
//triple u2 = (M + (0,0,-.75));
//triple v2 = (N + (0,0,-.75));

//draw (x2 -- w2 -- p2 -- q2 -- cycle);
//draw (y2 -- z2);
//draw (u2 -- v2);

pair a = (0,0);
pair b = (1,0);
pair c = (1,1);
pair d = (0,1);

pair A = (.7,.25);
pair B = (.7,.25);
pair C = (.7,.35);
pair D = (.6,.35);

pair E = (.6,.75);
pair F = (.4,.75);
pair G = (.4,.25);

pair H = (E - (0,.1));
pair I = (F - (0,.1));

draw (shift(-.05)*(H -- I));
draw (shift(-.05)*(A -- B -- C -- D -- E -- F -- G -- cycle));

//pair e = (0,0,1);
//pair f = (1,0,1);
//pair g = (1,1,1);
//pair h = (0,1,1);

//draw ((a -- b -- f -- e -- cycle));
//draw ((a -- d -- h -- e -- cycle));
draw ((a -- b -- c -- d -- cycle));
draw (shift(1,0)*(a -- b -- c -- d -- cycle));

pair A1 = (.4,.25);
pair B1 = (.7,.25);
pair C1 = (.7,.6);
pair D1 = (.5,.75);
pair E1 = (.4,.75);
pair F1 = (A1+(0,.1));
pair G1 = (B1+(0,.1));

draw (shift(.95,0)*(A1 -- B1 -- C1 -- D1 -- E1) -- cycle);
draw (shift(.95,0)*(F1 -- G1), dashed);


draw (shift(0,-1)*(a -- b -- c -- d -- cycle));

pair A2 = (.3,.3);
pair B2 = (.7,.3);
pair C2 = (.7,.7);
pair D2 = (.3,.7);
pair E2 = (.6,.7);
pair F2 = (.6,.3);
pair G2 = (.3,.6);
pair H2 = (.6,.6);

draw (shift(0,-1)*(A2 -- B2 -- C2 -- D2) -- cycle);
draw (shift(0,-1)*(E2 -- F2));
draw (shift(0,-1)*(G2 -- H2));


path f1 = ((0,1) -- (1,1));

label(scale(.8)*"Vista Frontal", (.5,1), align=S);
label(scale(.8)*"Vista Lateral", shift(1,0)*(.5,1), align=S);
label(scale(.8)*"Vista Superior", shift(0,-1)*(.5,1), align=S);

label(rotate(90)*scale(.8)*"Plano Frontal",(0,.5), align=W);
label(rotate(90)*scale(.8)*"Plano Horizontal",shift(0,-1)*(0,.5), align=W);
label(rotate(90)*scale(.8)*"Plano Lateral",(2.1,.5));
