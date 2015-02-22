who = argument0;
xxxx = view_xview[0]+argument1;
skill_yy = view_yview[0]+argument2;

img = 24;
if (path_get_number(who.path) > 1 && who.actions > 0) img = 26;

if (mouse_x > xxxx && mouse_x < xxxx+50 && mouse_y > skill_yy && mouse_y < skill_yy+50) 
    {
    if (img != 24) img = 25
    game_control.over_other = true;
    game_control.mouse = "skill";
    }
    
draw_sprite(spr_skills1, img, xxxx, skill_yy);

if (mouse_check_button_pressed(mb_left) && img = 25)
    {
    show_debug_message("move click"); 
    with (who) path_start(path, 1, 0, true);
    who.actions--;
    who.selected = false;
    game_control.t_actions--;
    game_control.new_select = noone;
    }