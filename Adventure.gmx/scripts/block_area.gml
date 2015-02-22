///block_area(calling id, add unit id, radius, grid)

dist = point_distance(argument0.x, argument0.y, argument1.x, argument1.y);
dir = point_direction(argument0.x, argument0.y, argument1.x, argument1.y);

x0 = argument0.range / 10 + lengthdir_x(dist, dir)/5; 
y0 = argument0.range / 10 + lengthdir_y(dist, dir)/5; 
xx = argument2;
yy = 0;
r_er = 1-xx;
grid = argument3;


while (xx >= yy)
  {
  mp_grid_add_cell(grid, xx + x0, yy + y0);
  mp_grid_add_cell(grid, yy + x0, xx + y0);
  mp_grid_add_cell(grid, -xx + x0, yy + y0);
  mp_grid_add_cell(grid, -yy + x0, xx + y0);
  mp_grid_add_cell(grid, -xx + x0, -yy + y0);
  mp_grid_add_cell(grid, -yy + x0, -xx + y0);
  mp_grid_add_cell(grid, xx + x0, -yy + y0);
  mp_grid_add_cell(grid, yy + x0, -xx + y0);
  yy++;
  if (r_er < 0) r_er += 2 * yy + 1;
  else
      {
      xx--;
      r_er += 2 * (yy - xx + 1);
      }
  }
