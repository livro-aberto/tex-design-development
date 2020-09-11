settings.outformat="pdf";
settings.render=16;
import three;
import graph3;
import solids;
import math;
size(5cm);

currentprojection=orthographic(1.5,3/4,1/2);

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


triple A = ((1-sqrt(3)/3)/2,1/6,0);
triple B = ((1-sqrt(3)/3)/2,5/6,0);
triple C = (sqrt(3)/3+(1-sqrt(3)/3)/2,1/2,0);

triple D = (sqrt(3)/3+(1-sqrt(3)/3)/2-sqrt(3)*2/9,1/2,0);

//draw(A -- D -- B -- D -- C);
//draw (A -- B -- C -- cycle);

triple Q = (0,0,(1-sqrt(24)/9)/2);


triple A1 = (A+Q);
triple B1 = (B+Q);
triple C1 = (C+Q);



draw(surface(A1 -- B1 -- C1 -- cycle), red+opacity(.5));

triple D1 = (sqrt(3)/3+(1-sqrt(3)/3)/2-sqrt(3)*2/9,1/2,(1-sqrt(24)/9)/2+sqrt(24)/9);

path3 p1 = (A1 -- B1 -- C1 -- cycle);
path3 p2 = (A1 -- D1 -- C1 -- cycle);
path3 p3 = (A1 -- D1 -- B1 -- cycle);
path3 p4 = (B1 -- D1 -- C1 -- cycle);

draw(p1);			
draw(p2);
draw(p3);
draw(p4);

draw(planeproject(XY*unitsquare3)*p1);
draw(planeproject(XY*unitsquare3)*p2);
draw(planeproject(XY*unitsquare3)*p3);

draw(surface(A1 -- D1 -- C1 -- cycle), red+opacity(.9));
draw(surface(A1 -- D1 -- B1 -- cycle), red+opacity(.9));
draw(surface(B1 -- D1 -- C1 -- cycle), red+opacity(.9));

draw((A1 -- B1 -- C1 -- cycle));
draw((A1 -- D1 -- C1 -- cycle));
draw((A1 -- D1 -- B1 -- cycle));
draw((B1 -- D1 -- C1 -- cycle));