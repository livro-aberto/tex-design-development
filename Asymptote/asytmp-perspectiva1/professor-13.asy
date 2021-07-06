if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="professor-13";
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

size(3cm,3cm);
currentprojection=orthographic(3,10,3);

triple a = (0,0,0);
triple b = (1,0,0);
triple c = (.5,.86602,0);
triple d = (0,1,0);

triple A = (.5,0.288675,1.5);

draw(surface(a -- b -- c -- a -- cycle), azul*80+opacity(0.65));
draw(surface(a -- b -- A -- cycle), azul*80+opacity(0.65));
draw(surface(b -- c -- A -- cycle), azul*80+opacity(0.65));
draw(surface(c -- a -- A -- cycle), azul*80+opacity(0.65));

draw((a -- b), dashed);
draw(b -- c);
draw(c -- a);
draw(a -- A -- b -- c -- A);

