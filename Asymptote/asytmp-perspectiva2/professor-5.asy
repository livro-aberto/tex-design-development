if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="professor-5";
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

size(6cm);

currentprojection=orthographic(3,1.5,3.5);

triple a = (0,0,0);
triple b = (1,0,0);
triple c = (1,1,0);
triple d = (0,1,0);

triple e = (0,0,1);
triple f = (1,0,1);
triple g = (1,1,1);
triple h = (0,1,1);

triple j = (.5,1,0);

draw (a -- b -- c -- d -- cycle);
draw (e -- f -- g -- h -- cycle);
draw (a -- b -- f -- e -- cycle);
draw (c -- d -- h -- g -- cycle);


label ("H", (a), align=NW);
label ("E", (b), align=SW);
label ("F", (c), align=S);
label ("G", (d), align=SE);

label ("D", (e), align=NW);
label ("A", (f), align=NW);
label ("B", (g), align=SW);
label ("C", (h), align=NE);

real f(real x){return -x+1;}
path s1 = graph(f,-.3,1.3);

path3 d1 = path3(s1);

draw(d1);


real f(real x){return x;}
path s2 = graph(f,-.2,2);

path3 d2 = shift(0,0,1)*path3(s2);

draw(d2);

triple [] array={a,b,c,d,e,f,g,h};
for(triple i:array) {
dot(i, linewidth(1.5));
}

dot((.86,1,.67), linewidth(2.5));

draw ((.7,1,.9) -- (.8,.98,.67), arrow=Arrow3(TeXHead2));
