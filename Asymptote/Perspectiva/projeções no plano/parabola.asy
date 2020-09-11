settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
import math;
size(5cm);

currentprojection=perspective(2.13,1.57,.72);


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

real f(real x){return -5*x^2+5*(x)-.5;}
path s = graph(f,0.15,.85);

path3 d = shift(0,.8,.2)*rotate(135,(0,0,0),(1,0,0))*path3(s);
//draw(d);

draw(planeproject(XY*unitsquare3)*d);
draw(planeproject(YZ*unitsquare3)*d);
draw(planeproject(ZX*unitsquare3)*d);
//draw (a -- b -- c -- d -- cycle);
//draw (e -- f -- g -- h -- cycle);
//draw (a -- b -- f -- e -- cycle);
//draw (c -- d -- h -- g -- cycle);



