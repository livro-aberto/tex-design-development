settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
import math;
size(5cm);

currentprojection=perspective(2.13,1.57,.72);

triple a = (0,0,0);
triple b = (1,0,0);
triple c = (1,1,0);
triple d = (0,1,0);

triple e = (0,0,1);
triple f = (1,0,1);
triple g = (1,1,1);
triple h = (0,1,1);

draw ((a -- b -- f -- e -- cycle));
draw ((a -- d -- h -- e -- cycle));
draw ((a -- b -- c -- d -- cycle));


triple A = (1/4,1/4,1/4);
triple B = (3/4,1/4,1/4);
triple C = (3/4,3/4,1/4);
triple D = (1/4,3/4,1/4);

triple E = (1/4,1/4,3/4);
triple F = (3/4,1/4,3/4);
triple G = (3/4,3/4,3/4);
triple H = (1/4,3/4,3/4);

draw (A -- B -- C -- D -- cycle);
draw (E -- F -- G -- H -- cycle);

draw (A -- E);
draw (B -- F);
draw (C -- G);
draw (D -- H);

draw (surface(A -- B -- C -- D -- cycle), red);
draw (surface(E -- F -- G -- H -- cycle), red);

draw (surface(A -- E -- F -- B -- cycle), red);
draw (surface(B -- F -- G -- C -- cycle), red);
draw (surface(C -- G -- H -- D -- cycle), red);
draw (surface(D -- H -- E -- A -- cycle), red);

