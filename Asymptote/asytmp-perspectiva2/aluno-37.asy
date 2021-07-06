if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="aluno-37";
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

size(7cm);

currentprojection=orthographic(1.5,1.5,1/2);

triple A = (.4,.4,.35);
triple B = (.4,.7,.35);
triple C = (.7,.7,.35);
triple D = (.7,.4,.35);

triple E = (A+(0,0,.1));
triple F = (B+(0,0,.1));
triple G = (E+(.1,0,0));
triple H = (F+(.1,0,0));

triple I = (C+(0,0,.3));
triple J = (H+(0,0,.2));

triple K = (D+(0,0,.4));
triple L = (G+(0,0,.3));

triple M = (K+(0,.1,0));
triple N = (L+(0,.1,0));



pair a = (0,0);
pair b = (1,0);
pair c = (1,1);
pair d = (0,1);

pair A = (.7,.25);
pair B = (.7,.25);
pair C = (.7,.35);
pair D = (.6,.35);

pair E = (.6,.75);
pair F = (.4,.75);
pair G = (.4,.25);

pair H = (E - (0,.1));
pair I = (F - (0,.1));

draw ((a -- b -- c -- d -- cycle));
draw (shift(-.05)*(H -- I));
draw (shift(-.05)*(A -- B -- C -- D -- E -- F -- G -- cycle));

draw (reflect((2.5,0),(2.5,1))*shift(2,0)*(a -- b -- c -- d -- cycle));
draw (reflect((2.5,0),(2.5,1))*shift(2,0)*shift(-.05)*(H -- I), dashed);
draw (reflect((2.5,0),(2.5,1))*shift(2,0)*shift(-.05)*(A -- B -- C -- D -- E -- F -- G -- cycle));

pair A1 = (.4,.25);
pair B1 = (.7,.25);
pair C1 = (.7,.6);
pair D1 = (.5,.75);
pair E1 = (.4,.75);
pair F1 = (A1+(0,.1));
pair G1 = (B1+(0,.1));

draw (shift(1,0)*(a -- b -- c -- d -- cycle));

draw (shift(.95,0)*(A1 -- B1 -- C1 -- D1 -- E1) -- cycle);
draw (shift(.95,0)*(F1 -- G1), dashed);

draw (reflect((-.5,0),(-.5,1))*shift(-1,0)*(a -- b -- c -- d -- cycle));

draw (reflect((-.5,0),(-.5,1))*shift(-1.05,0)*(A1 -- B1 -- C1 -- D1 -- E1) -- cycle);
draw (reflect((-.5,0),(-.5,1))*shift(-1.05,0)*(F1 -- G1));

pair A2 = (.3,.3);
pair B2 = (.7,.3);
pair C2 = (.7,.7);
pair D2 = (.3,.7);
pair E2 = (.6,.7);
pair F2 = (.6,.3);
pair G2 = (.3,.6);
pair H2 = (.6,.6);

draw (shift(0,-1)*(a -- b -- c -- d -- cycle));

draw (shift(0,-1)*(A2 -- B2 -- C2 -- D2) -- cycle);
draw (shift(0,-1)*(E2 -- F2));
draw (shift(0,-1)*(G2 -- H2));

draw (shift(0,1)*(a -- b -- c -- d -- cycle));

draw (reflect((0,1.5),(1,1.5))*shift(0,1)*(A2 -- B2 -- C2 -- D2) -- cycle);
draw (reflect((0,1.5),(1,1.5))*shift(0,1)*(E2 -- F2), dashed);
draw (reflect((0,1.5),(1,1.5))*shift(0,1)*(G2 -- H2), dashed);


