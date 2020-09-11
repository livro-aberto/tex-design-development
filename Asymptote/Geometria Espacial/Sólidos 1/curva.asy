settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);


path p = (0, 0) .. (1, -2) .. (3, 0) .. (3, -1) .. (3, 2) .. (1, 1) .. (1, 0) .. cycle;

draw(p);