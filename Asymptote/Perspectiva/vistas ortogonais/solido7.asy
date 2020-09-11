settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
import math;
import labelpath3;
size(5cm);

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

draw(B -- C -- I -- J -- H -- F -- cycle);

draw(C -- D -- K -- M -- I -- cycle);
draw(D -- K -- L -- G -- E -- A -- cycle);
draw(K -- L -- N -- M -- cycle);
draw(M -- N -- J -- I -- cycle);

draw (A -- B -- C -- D -- cycle);
draw (E -- F -- H -- G -- cycle);
draw (A -- B -- F -- E -- cycle);

draw(surface(B -- C -- I -- J -- H -- F -- cycle), red);

draw(surface(C -- D -- K -- M -- I -- cycle), red);
draw(surface(D -- K -- L -- G -- E -- A -- cycle), red);
draw(surface(K -- L -- N -- M -- cycle), red);
draw(surface(M -- N -- J -- I -- cycle), red);

draw (surface(A -- B -- C -- D -- cycle), red);
draw (surface(E -- F -- H -- G -- cycle), red);
draw (surface(A -- B -- F -- E -- cycle), red);

draw (surface(H -- J -- N --L -- G -- cycle), red);


triple x = (C - (.7,0,0));
triple w = (D - (.7,0,0));
triple p = (K - (.7,0,0));
triple q = (M - (.7,0,0));
triple y = (I - (.7,0,0));
triple z = (E - (.4,0,0));
triple u = (F - (.4,0,0));

draw (x -- w -- p --q --y -- cycle);
draw (z -- u, dashed);

triple x1 = (A + (0,-.4,0));
triple w1 = (D + (0,-.4,0));
triple p1 = (E + (0,-.4,0));
triple q1 = (G + (0,-.4,0));
triple y1 = (K + (0,-.4,0));
triple z1 = (L + (0,-.4,0));
triple u1 = (I + (0,-.7,0));
triple v1 = (J + (0,-.7,0));

draw (x1 -- w1 -- y1 -- z1 --q1 -- p1 -- cycle);
draw (u1 -- v1);

triple x2 = (A + (0,0,-.35));
triple w2 = (B + (0,0,-.35));
triple p2 = (C + (0,0,-.35));
triple q2 = (D + (0,0,-.35));
triple y2 = (G + (0,0,-.45));
triple z2 = (H + (0,0,-.45));
triple u2 = (M + (0,0,-.75));
triple v2 = (N + (0,0,-.75));

draw (x2 -- w2 -- p2 -- q2 -- cycle);
draw (y2 -- z2);
draw (u2 -- v2);

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

dot(A, linewidth(2));
dot(B, linewidth(2));
dot(C, linewidth(2));
dot(D, linewidth(2));
dot(E, linewidth(2));
dot(F, linewidth(2));
dot(G, linewidth(2));
dot(H, linewidth(2));
dot(I, linewidth(2));
dot(J, linewidth(2));
dot(K, linewidth(2));
dot(L, linewidth(2));
dot(M, linewidth(2));
dot(N, linewidth(2));

//draw (a -- b -- c -- d -- cycle);
//draw (e -- f -- g -- h -- cycle);
//draw (a -- b -- f -- e -- cycle);
//draw (c -- d -- h -- g -- cycle);


draw((0,.9,.2) -- (0,.6,.2), arrow=Arrow3(TeXHead2));
draw((.9,0,.2) -- (.6,0,.2), arrow=Arrow3(TeXHead2));
draw((0,.2,.9) -- (0,.2,.6), arrow=Arrow3(TeXHead2));

path3 f1 =  ((.8,0,1.05) -- (.2,0,1.05));

string txt = "Plano Frontal";
draw(labelpath(txt, subpath(f1,0,1),angle=180));

path3 f2 =  ((0,0.2,1.05) -- (0,0.8,1.05));

string txt = "Plano Lateral";
draw(labelpath(txt, subpath(f2,0,1),angle=270));

path3 f3 =  ((0.9,1.15,0) -- (0.1,1.15,0));

string txt = "Plano Horizontal";
draw(labelpath(txt, subpath(f3,0,1),angle=100));