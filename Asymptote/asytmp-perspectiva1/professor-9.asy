if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="professor-9";
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
currentprojection=orthographic(1/2,6,0.5);


// Draw cylinder
// cylinder(startpoint3d, radius, length, along_this_axis)
triple start = (0,0,0);
real length = 3.5;
real radius = 1;
triple ax = (0,0,1);
revolution r = cylinder(start,radius,length,ax);
draw(surface(r),azul*80+opacity(0.65));
draw(r, black+linewidth(.5));
draw(surface(circle(c=(0,0,0), r=1, Z)), azul*80+opacity(0.65));
draw(surface(circle(c=(0,0,3.5), r=1, normal=Z)), azul*80+opacity(0.65));
