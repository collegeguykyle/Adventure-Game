///pathing_start(id)

var who = argument0;
var xx = who.x;
var yy = who.y;
var count_node = array_height_2d(nav_mesh.nodes);
who.nav_array = 0;
var num = 0;

for (i=1; i<count_node; i++) //add to open list all nodes start point has los to
   {
   if (node_los(xx, yy, nav_mesh.nodes[i,0], nav_mesh.nodes[i,1]))
      {
      who.nav_array[num] = i;
      num++;
      }
   }
   

