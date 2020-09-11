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

//draw ((a -- b -- f -- e -- cycle));
//draw ((a -- d -- h -- e -- cycle));
draw ((a -- b -- c -- d -- cycle));

triple r1 = (.25,.25,.25);
triple r2 = (.75,.75,.75);

triple A1 = rotate(60,r1,r2)*(.25,.25,.25);
triple B1 = rotate(60,r1,r2)*(.75,.25,.25);
triple C1 = rotate(60,r1,r2)*(.75,.75,.25);
triple D1 = rotate(60,r1,r2)*(.25,.75,.25);

triple E1 = rotate(60,r1,r2)*(.25,.25,.75);
triple F1 = rotate(60,r1,r2)*(.75,.25,.75);
triple G1 = rotate(60,r1,r2)*(.75,.75,.75);
triple H1 = rotate(60,r1,r2)*(.25,.75,.75);


draw(A1 -- B1 -- C1 -- D1 -- cycle);
draw(E1 -- F1 -- G1 -- H1 -- cycle);

draw(A1 -- E1 -- F1 -- B1 -- C1 -- G1 -- H1 -- D1);

draw(surface(A1 -- B1 -- C1 -- D1 -- cycle), red+opacity(.9));
draw(surface(E1 -- F1 -- G1 -- H1 -- cycle), red+opacity(.9));

draw(surface(A1 -- B1 -- F1 -- E1 -- cycle), red+opacity(.9));
draw(surface(C1 -- G1 -- H1 -- D1 -- cycle), red+opacity(.9));

draw(surface(B1 -- C1 -- G1 -- F1 -- cycle), red+opacity(.9));
draw(surface(D1 -- A1 -- E1 -- H1 -- cycle), red+opacity(.9));

//triple A2 = rotate(60,r1,r2)*(.25,.25,.25) - (0,0,.25);
//triple B2 = rotate(60,r1,r2)*(.75,.25,.25) - (0,0,.0835);
//triple C2 = rotate(60,r1,r2)*(.75,.75,.25) - (0,0,.4165);
//triple D2 = rotate(60,r1,r2)*(.25,.75,.25) - (0,0,.5833);

//triple E2 = rotate(60,r1,r2)*(.25,.25,.75) - (0,0,.5833);
//triple F2 = rotate(60,r1,r2)*(.75,.25,.75) - (0,0,.4165);
//triple G2 = rotate(60,r1,r2)*(.75,.75,.75) - (0,0,.75);
//triple H2 = rotate(60,r1,r2)*(.25,.75,.75) - (0,0,.91666);

dot(A1);
//dot(A2, linewidth(1));
dot(B1);
//dot(B2, linewidth(1));
dot(C1);
//dot(C2, linewidth(1));
dot(D1);
//dot(D2, linewidth(1));

dot(E1);
//dot(E2, linewidth(1));
dot(F1);
//dot(F1, linewidth(1));
dot(G1);
//dot(G2, linewidth(1));
dot(H1);
//dot(H2, linewidth(1));

//draw(A2 -- B2 -- C2 -- D2 -- cycle);
//draw(E2 -- F2 -- G2 -- H2 -- cycle);

draw(A2 -- E2 -- F2 -- B2 -- C2 -- G2 -- H2 -- D2);