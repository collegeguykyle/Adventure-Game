///draw_circle_part(x, y, r, color, start_angle, end_angle, inner_radius):
/* (x, y) is the center of the circle; r is the outer radius; color is the color; start_angle and end_angle are self-explanatory; filled is true if the circle should be filled, false otherwise; and if filled is false, inner_radius is the radius of the cut-out circle */

var cx, cy, o_r, c, th1, th2, filled, i_r, th, inout;
cx=argument0;
cy=argument1;
o_r=argument2;
c=argument3;
th1=min(argument4, argument5);
th2=max(argument4, argument5);
i_r=argument6;
if (argument2 != argument6) filled = false;

if (filled) {
  draw_primitive_begin(pr_trianglefan);
  draw_vertex_color(cx, cy, c, 1);

  for (th=th1; th<=th2; th+=0.5) {
    draw_vertex_color(cx + lengthdir_x(o_r, th), cy + lengthdir_y(o_r, th), c, 1);
  }
  draw_primitive_end();
}
else {
  draw_primitive_begin(pr_trianglestrip);

  for ({th=th1; inout=0}; th<=th2; {th+=0.5; inout+=1}) {
    if (inout mod 2) {
      draw_vertex_color(cx + lengthdir_x(i_r, th), cy + lengthdir_y(i_r, th), c, 1);
    }
    else {
      draw_vertex_color(cx + lengthdir_x(o_r, th), cy + lengthdir_y(o_r, th), c, 1);
    }
  }

  /* This just makes sure it always ends on the inner ring so it doesn't leave gaps. */
  if (inout mod 2) {
    draw_vertex_color(cx + lengthdir_x(i_r, th), cy + lengthdir_y(i_r, th), c, 1);
  }

  draw_primitive_end();
}
