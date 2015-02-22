///image_dir(dir);
dir = argument0;
if (dir > 45 && dir < 135) return 2;
else if (dir > 135 && dir < 225) return 1;
else if (dir > 225 && dir < 315) return 0;
else return 3;
