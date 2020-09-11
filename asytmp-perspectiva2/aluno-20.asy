if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="aluno-20";
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

size(3cm,3.5cm);
currentprojection=orthographic(3,.3,.5);


triple a = (0,0,0);
triple b = (1,0,0);
triple c = (.5,.86602,0);

triple d = (0,0,1);
triple e = (1,0,1);
triple f = (.5,.86602,1);

draw(surface(a--b--c--a--cycle), laranja*80+opacity(0.65));
draw(surface(d--e--f--d--cycle), laranja*80+opacity(0.65));
draw(surface(a--d--e--b--cycle), laranja*80+opacity(0.65));
draw(surface(b--e--f--c--cycle), laranja*80+opacity(0.65));
draw(surface(c--f--d--a--cycle), laranja*80+opacity(0.65));

draw(d--e--f--cycle);
draw(d--a--b, dashed);
draw(a--c,dashed);
draw(e--b--c--f);
