settings.outformat="pdf";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);


path p = (-2,0) .. (0, -3) .. (5, -2) .. (3, -1) .. (3, 2) .. (1, 1) .. (0, 1) .. cycle;
draw(p, marker=MarkFill[0]);