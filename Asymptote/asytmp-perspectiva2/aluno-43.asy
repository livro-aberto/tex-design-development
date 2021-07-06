if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="aluno-43";
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

currentprojection=perspective(2.53,1.60,1.27);



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


triple A = rotate(45,(0,.5,.5), (1,.5,.5))*(1/4,1/4,1/4);
triple B = rotate(45,(0,.5,.5), (1,.5,.5))*(3/4,1/4,1/4);
triple C = rotate(45,(0,.5,.5), (1,.5,.5))*(3/4,3/4,1/4);
triple D = rotate(45,(0,.5,.5), (1,.5,.5))*(1/4,3/4,1/4);

triple E = rotate(45,(0,.5,.5), (1,.5,.5))*(1/4,1/4,3/4);
triple F = rotate(45,(0,.5,.5), (1,.5,.5))*(3/4,1/4,3/4);
triple G = rotate(45,(0,.5,.5), (1,.5,.5))*(3/4,3/4,3/4);
triple H = rotate(45,(0,.5,.5), (1,.5,.5))*(1/4,3/4,3/4);

draw (A -- B -- C -- D -- cycle);
draw (E -- F -- G -- H -- cycle);

draw (A -- E);
draw (B -- F);
draw (C -- G);
draw (D -- H);

draw (surface(A -- B -- C -- D -- cycle), verde*80);
draw (surface(E -- F -- G -- H -- cycle), verde*80);

draw (surface(A -- E -- F -- B -- cycle), verde*80);
draw (surface(B -- F -- G -- C -- cycle), verde*80);
draw (surface(C -- G -- H -- D -- cycle), verde*80);
draw (surface(D -- H -- E -- A -- cycle), verde*80);
