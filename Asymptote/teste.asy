settings.outformat="pdf";
settings.render=8;
import three;


currentprojection=orthographic(2.5,2,3);

size(5cm);
size3(3cm,5cm,8cm);

draw(unitbox);

//draw(shift(X)*unitsphere,blue+opacity(0.5));

// draw the (infinite) line going through P and Q, without altering the
// size of picture pic.
void drawline(picture pic=currentpicture, triple P, triple Q, pen p=currentpen)
{
  pic.add(new void (frame f, transform3 t, transform3 T, picture pic2,
                    projection R, triple m, triple M) {
      // Reduce the bounds by the size of the pen.
            real b=abs(min(p));
            real B=abs(max(p));
            m -= (b,b,b); M -= (B,B,B);

      // Calculate the points and direction vector in the transformed space.
      t=t*T;
      triple z=t*P;
      triple v=t*Q-z;

      // Handle horizontal and vertical lines.
      if(v.x == 0) {
        if(m.x <= z.x && z.x <= M.x)
          draw(f,(z.x,m.y,m.z)--(z.x,M.y,M.z),p);
      } else if(v.y == 0) {
        if(m.y <= z.y && z.y <= M.y)
          draw(f,(m.x,z.y,m.z)--(M.x,z.y,M.z),p);
      } else if(v.z == 0) {
        if(m.z <= z.z && z.z <= M.z)
          draw(f,(m.x,m.y,z.z)--(M.x,M.y,z.z),p);
      } else {
        // Calculate the maximum and minimum t values allowed for the
        // parametric equation z + t*v
        real mx=(m.x-z.x)/v.x, Mx=(M.x-z.x)/v.x;
        real my=(m.y-z.y)/v.y, My=(M.y-z.y)/v.y;
        real mz=(m.z-z.z)/v.z, Mz=(M.z-z.z)/v.z;
        real tmin=max(v.x > 0 ? mx : Mx, v.y > 0 ? my : My, v.z > 0 ? mz : Mz);
        real tmax=min(v.x > 0 ? Mx : mx, v.y > 0 ? My : my, v.z > 0 ? Mz : mz);
        if(tmin <= tmax)
          draw(f,z+tmin*v--z+tmax*v,p);
      }
    },true);
}


drawline(X,Y,cyan);
drawline(X,Y+Z,magenta);
draw(box(currentpicture.userMin3(),currentpicture.userMax3()),red);