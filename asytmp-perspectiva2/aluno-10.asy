if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="aluno-10";
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

size(3cm,3cm);
currentprojection=orthographic(2,5,-1);


path3 p = circle(c=(0,0,0), r=1, normal=Z);;

triple extAlong = Z + .5Y;
real h = 3;
draw (p);
draw (surface(p), azul*80+opacity(.5));
draw (surface(shift (h * extAlong) * (p)), azul*80+opacity(.5));
draw (shift (h * extAlong) * (p));
draw (extrude(reverse (p), h * extAlong), azul*80+opacity (.5));
