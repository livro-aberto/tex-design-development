if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="aluno-32";
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

size(9cm);

currentprojection=orthographic(1.5,1.5,1/2);

pair a = (0,0);
pair b = (1,0);
pair c = (1,1);
pair d = (0,1);

draw ((a -- b -- c -- d -- cycle));

pair A = (.2,.2);
pair B = (.8,.2);
pair C = (.8,.8);
pair D = (.2,.8);

pair A1 = (.35,.35);
pair B1 = (.65,.35);
pair C1 = (.65,.65);
pair D1 = (.35,.65);

filldraw (A -- B -- C -- D -- cycle, fillpen=verde);
filldraw (A1 -- B1 -- C1 -- D1 -- cycle, fillpen=verde+white);

draw (shift(1,0)*(a -- b -- c -- d -- cycle));
draw ((2,0) -- (2,1));


draw (shift(0,-1)*(a -- b -- c -- d -- cycle));
filldraw (shift(0,-1)*(A -- B -- C -- D -- cycle), fillpen=verde);
filldraw (shift(0,-1)*(A1 -- B1 -- C1 -- D1 -- cycle),fillpen=verde+white);

label(scale(.8)*"Vista Frontal", (.5,1), align=S);
label(scale(.8)*"Vista Lateral", shift(1,0)*(.5,1), align=S);
label(scale(.8)*"Vista Superior", shift(0,-1)*(.5,1), align=S);
label(scale(.8)*"Objeto 3D", shift(1,-1)*(.5,1), align=S);


label(rotate(90)*scale(.8)*"Plano Frontal",(0,.5), align=W);
label(rotate(90)*scale(.8)*"Plano Horizontal",shift(0,-1)*(0,.5), align=W);
label(rotate(90)*scale(.8)*"Plano Lateral",(2.1,.5));

label(scale(3)*"?", (1.5,.5));
label(scale(3)*"?", (1.5,-.5));
