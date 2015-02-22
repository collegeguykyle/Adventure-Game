///node_los(x1, y1, x2, y2)

var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var test = true;
var los = true;
var count = array_height_2d(nav_mesh.perm);
var col = false;
var calling = collision_point(x1, y1, unit, true, true);

if (x1 = x2 && y1 = y2) return false; //check to ensure not checking los to self

for (k=1; k<count; k++) //check for los crossing with all polygons, k = polygon
   {
   var nnum = nav_mesh.perm[k,0]; //nnum = number of points in polygon
   for (m=1; m<nnum; m+=2)
      {
      var px1 = nav_mesh.perm[k,m];
      var px2 = nav_mesh.perm[k,m+1];
      var t = m+2;
      if (m = nnum-1 || m = nnum) t = 1; //if last point in polygon it connects to first point in polygon
      var px3 = nav_mesh.perm[k,t];
      var px4 = nav_mesh.perm[k,t+1]
      if (lines_cross(x1, y1, x2, y2, px1, px2, px3, px4))
         {
         los = false;
         k += count;  //exit loop early
         m += nnum;
         }
      }
   } 

if (calling) with (calling) other.col = collision_line(x1, y1, x2, y2, no_walk, true, true);   
else col = collision_line(x1, y1, x2, y2, no_walk, true, true);   
if (los = true && !col)
   {
   return true
   }
else return false;
