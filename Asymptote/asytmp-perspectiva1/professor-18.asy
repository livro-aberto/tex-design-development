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

size(3cm,3cm);
currentprojection=orthographic(4,7,0.5);

path p = (-2,0) .. (0, -3) .. (3, -2) .. (3, -1) .. (3, 2) .. (1, 1) .. (0, 1) .. cycle;

triple c = (5,4,7);
dot((c), linewidth(.000001));
draw (path3 (p));
draw (surface(path3(p)), azul*80+opacity(.5));
draw (extrude(path3 (p), (c) -- cycle), azul*80+opacity (.5));
