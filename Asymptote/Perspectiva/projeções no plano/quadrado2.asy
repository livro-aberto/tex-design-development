settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
import math;
size(5cm);

currentprojection=perspective(2.13,1.57,.72);

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

//draw(B -- C -- I -- J -- H -- F -- cycle);

//draw(C -- D -- K -- M -- I -- cycle);
//draw(D -- K -- L -- G -- E -- A -- cycle);
//draw(K -- L -- N -- M -- cycle);
//draw(M -- N -- J -- I -- cycle);

//draw (A -- B -- C -- D -- cycle);
//draw (E -- F -- H -- G -- cycle);
//draw (A -- B -- F -- E -- cycle);

//draw(surface(B -- C -- I -- J -- H -- F -- cycle), red);

//draw(surface(C -- D -- K -- M -- I -- cycle), red);
//draw(surface(D -- K -- L -- G -- E -- A -- cycle), red);
//draw(surface(K -- L -- N -- M -- cycle), red);
//draw(surface(M -- N -- J -- I -- cycle), red);

//draw (surface(A -- B -- C -- D -- cycle), red);
//draw (surface(E -- F -- H -- G -- cycle), red);
//draw (surface(A -- B -- F -- E -- cycle), red);

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


draw((0,1/4,1/2-sqrt(2)/8)--(0,3/4,1/2+sqrt(2)/8));

draw((1/4,0,1/2-sqrt(2)/8)--(3/4,0,1/2-sqrt(2)/8)--(3/4,0,1/2+sqrt(2)/8)--(1/4,0,1/2+sqrt(2)/8)--cycle);

draw((1/4,1/2-sqrt(2)/8,0)--(3/4,1/2-sqrt(2)/8,0)--(3/4,1/2+sqrt(2)/8,0)--(1/4,1/2+sqrt(2)/8,0)--cycle);

//draw (a -- b -- c -- d -- cycle);
//draw (e -- f -- g -- h -- cycle);
//draw (a -- b -- f -- e -- cycle);
//draw (c -- d -- h -- g -- cycle);



