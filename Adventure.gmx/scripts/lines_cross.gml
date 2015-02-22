///lines_cross(l1 x1, l1 y1, l1 x2, l1 y2, l2 x1, l2 y1, l2 x2, l2 y2);

var ax = argument0;
var ay = argument1;
var bx = argument2;
var by = argument3;
var cx = argument4;
var cy = argument5;
var dx = argument6;
var dy = argument7;



var denom = ((bx - ax) * (dy - cy)) - ((by - ay) * (dx - cx));

if (denom = 0) return false;

var numer1 = ((ay - cy) * (dx - cx)) - ((ax - cx) * (dy - cy));
var numer2 = ((ay - cy) * (bx - ax)) - ((ax - cx) * (by - ay));

if (numer1 = 0 || numer2 = 0) return false;

var r = numer1 / denom;
var s = numer2 / denom;

return (r > 0 && r < 1) && (s > 0 && s < 1);