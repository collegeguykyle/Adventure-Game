///move_area(surface, unit calling)

who = argument0;
surf = surface_create(1080, 720);
surface_set_target(surf);
draw_set_color(c_green);
first = true;
path = path_add();
for (i=0; i<361; i++)
    {
    xx = who.x + lengthdir_x(range, i)
    yy = who.y + lengthdir_y(range, i)
    who.direction = i;
    mp_potential_path_object(path, xx, yy, 10, 3, no_walk);
    len = path_get_length(path);
    p = range / len;
    if (first = true)
       {
       first = false;
       xp = path_get_x(path, p);
       yp = path_get_y(path, p);
       }
    else
       {
       xx = path_get_x(path, p);
       yy = path_get_y(path, p);
       draw_triangle(x, y, xx, yy, xp, yp, false);
       xp = xx;
       yp = yy;
       } 
    }
path_delete(path);
surface_reset_target();
return(surf);    
