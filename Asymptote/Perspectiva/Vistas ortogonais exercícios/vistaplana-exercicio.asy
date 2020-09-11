settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
import math;
import labelpath;
size(5cm);

currentprojection=orthographic(1.5,1.5,1/2);

pair a = (0,0);
pair b = (1,0);
pair c = (1,1);
pair d = (0,1);



draw ((a -- b -- c -- d -- cycle));

pair A = (.2,.2);
pair B = (.8,.2);
pair C = (.8,.8);
pair D = (.2,.8);

pair A1 = (.35,.35);
pair B1 = (.65,.35);
pair C1 = (.65,.65);
pair D1 = (.35,.65);

draw (A -- B -- C -- D -- cycle);
draw (A1 -- B1 -- C1 -- D1 -- cycle);

draw (shift(1,0)*(a -- b -- c -- d -- cycle));



draw (shift(0,-1)*(a -- b -- c -- d -- cycle));
draw (shift(0,-1)*(A -- B -- C -- D -- cycle));
draw (shift(0,-1)*(A1 -- B1 -- C1 -- D1 -- cycle));



label(scale(.6)*"Vista Frontal", (.5,1), align=S);
label(scale(.6)*"Vista Lateral", shift(1,0)*(.5,1), align=S);
label(scale(.6)*"Vista Superior", shift(0,-1)*(.5,1), align=S);
label(scale(.6)*"Objeto 3D", shift(1,-1)*(.5,1), align=S);


label(scale(3)*"?", (1.5,.5));
label(scale(3)*"?", (1.5,-.5));