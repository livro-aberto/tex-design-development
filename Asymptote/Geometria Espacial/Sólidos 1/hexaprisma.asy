settings.outformat="png";
settings.render=16;
import three;
import graph3;
size(5cm);
currentprojection=orthographic(1/2,6,0.5);

triple a = (0,0,0);
triple b = (1,0,0);
triple c = (1.5,0.8662,0);
triple d = (1,1.73205,0);
triple e = (0,1.73205,0);
triple f = (-.5,0.85502,0);

triple A = (-1,0,3);
triple B = (0,0,3);
triple C = (.5,0.8662,3);
triple D = (0,1.73205,3);
triple E = (-1,1.73205,3);
triple F = (-1.5,0.85502,3);

draw(surface(a -- b -- c -- d -- e -- f -- cycle), blue+opacity(0.5));
draw(surface(A -- B -- C -- D -- E -- F -- cycle), blue+opacity(0.5));

draw(surface(a -- b -- B -- A -- cycle), blue+opacity(0.5));
draw((A --a -- b -- B), dashed);

draw(surface(b -- B -- C -- c -- cycle), blue+opacity(0.5));
draw((A -- B -- C -- c));
draw((c -- b), dashed);

draw(surface(c -- d -- D -- C -- cycle), blue+opacity(0.5));
draw((c -- d -- D -- C -- cycle));

draw(surface(d -- D -- E -- e -- cycle), blue+opacity(0.5));
draw((d -- d -- D -- E -- e -- cycle));

draw(surface(e -- E -- F -- f -- cycle), blue+opacity(0.5));
draw((e --E -- F -- f -- cycle));

draw(surface(f -- F -- A -- a -- cycle), blue+opacity(0.5));
draw((a -- f), dashed);
draw((A -- F));

