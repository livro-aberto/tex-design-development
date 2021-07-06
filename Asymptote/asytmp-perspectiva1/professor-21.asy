if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="professor-21";
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

size(3.5cm,3.5cm);
currentprojection=orthographic(3,1/2,.5);

draw(unitcube, laranja*80+opacity(0.65));

triple a = (0,0,0);
triple b = (0,1,0);
triple c = (1,1,0);
triple d = (1,0,0);

triple e = (0,0,1);
triple f = (0,1,1);
triple g = (1,1,1);
triple h = (1,0,1);

draw(h -- d);
draw(d -- c);
draw(c -- b);

draw(a -- d, dashed);
draw(a -- b, dashed);
draw(a -- e, dashed);

draw(e -- f);
draw(f -- g);
draw(g -- h);
draw(h -- e);
draw(f -- b);
draw(g -- c);
