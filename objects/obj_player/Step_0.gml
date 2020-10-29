
//movement
if keyboard_check(ord("W"))
{
	y = y-4;
}

if keyboard_check(ord("S"))
{
	y = y+4;
}

if keyboard_check(ord("D"))
{
	x = x+4;
}

if keyboard_check(ord("A"))
{
	x = x-4;
}

image_angle = point_direction(x,y,mouse_x,mouse_y);




//weapon
if (mouse_check_button_pressed(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x-5,y-5,"bullet_layer",obj_bullet)
	instance_create_layer(x,y,"bullet_layer",obj_bullet)
	instance_create_layer(x+5,y+5,"bullet_layer",obj_bullet)
}
cooldown = 0;

if (player_health) <= 0 
{
	room_goto(rm_game_over);
}