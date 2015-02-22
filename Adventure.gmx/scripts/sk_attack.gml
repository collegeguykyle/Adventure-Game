who = argument0;
xxxx = view_xview[0]+argument1;
skill_yy = view_yview[0]+argument2;

img = 62;
me = false;

if (mouse_x > xxxx && mouse_x < xxxx+50 && mouse_y > skill_yy && mouse_y < skill_yy+50) 
    {
    if (img != 60) img = 61
    game_control.over_other = true;
    game_control.mouse = "skill";
    me = true;
    if (game_control.skill = "")
        {
        n = path_get_number(who.path)-1;
        px = path_get_point_x(who.path, n);
        py = path_get_point_y(who.path, n);
        //draw_circle_part(px, py, who.a_range+2, c_red, 0, 360, who.a_range-3);
        }
    }

if (game_control.skill = "attack")
    {
    game_control.over_other = true;
    //draw_circle_part(who.x, who.y, who.a_range+2, c_red, 0, 360, who.a_range-3);
    who.selected = false;
    with (enemy) if (collision_circle(other.who.x, other.who.y, other.who.a_range, id, false, false))
         {
         draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_red, .5);
         }
    tgt = collision_point(mouse_x, mouse_y, enemy, false, false);
    if (tgt)
       {
       draw_set_color(c_white)
       draw_rectangle(tgt.bbox_left, tgt.bbox_top, tgt.bbox_right, tgt.bbox_bottom, true);
       if (mouse_check_button_pressed(mb_left))
           {
           what = instance_create(tgt.x, tgt.y, basic_attack);
           what.attacker = who;
           what.defender = tgt; 
           game_control.attack = true;
           who.actions--;
           who.selected = false;
           game_control.t_actions--;
           game_control.new_select = noone;
           game_control.skill = "";
           }
       }
    if (!tgt && mouse_check_button_pressed(mb_left))
       {
       game_control.over_other = false;
       me = false;
       }
    }
    
if (mouse_check_button_pressed(mb_left) && me = true && who.actions > 0) game_control.skill = "attack";
if (game_control.skill = "attack") img = 61;
if (who.actions < 1) img = 60
draw_sprite(spr_skills1, img, xxxx, skill_yy);    
       
