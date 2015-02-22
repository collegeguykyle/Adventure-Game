///add_points_sqr(instance, gap size);

var me = argument0;
var gap = argument1;
var n = nav_mesh.perm_count;
var w = nav_mesh;
//n = nav_test_slow.perm_count;
//w = nav_test_slow

w.perm[n,0] = 8;

w.perm[n,1] = bbox_left-gap;
w.perm[n,2] = bbox_top-gap;
w.perm[n,3] = bbox_right+gap;
w.perm[n,4] = bbox_top-gap;
w.perm[n,5] = bbox_right+gap;
w.perm[n,6] = bbox_bottom+gap;
w.perm[n,7] = bbox_left-gap;
w.perm[n,8] = bbox_bottom+gap;

w.perm_count++;
