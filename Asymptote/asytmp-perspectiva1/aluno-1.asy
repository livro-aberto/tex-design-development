if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="aluno-1";
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

size(5cm);
currentprojection=orthographic(3,1,.5);

draw(unitcube, azul*80+opacity(0.65));

draw((1,0,1) -- (1,0,0), verde+linewidth(1.25), L=Label("a",position=MidPoint));
draw((1,0,0) -- (1,1,0), laranja+linewidth(1.25), L=Label("b",position=MidPoint));
draw((1,1,0) -- (0,1,0), vinho+linewidth(1.25), L=Label("c",position=MidPoint));

draw((0,0,0) -- (1,0,0), dashed);
draw((0,0,0) -- (0,1,0), dashed);
draw((0,0,0) -- (0,0,1), dashed);

draw((0,0,1) -- (0,1,1));
draw((0,1,1) -- (1,1,1));
draw((1,1,1) -- (1,0,1));
draw((1,0,1) -- (0,0,1));
draw((0,1,1) -- (0,1,0));
draw((1,1,1) -- (1,1,0));
