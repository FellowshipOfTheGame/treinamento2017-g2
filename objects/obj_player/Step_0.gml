/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C20E891
/// @DnDArgument : "code" "///@descr Player's behaviour$(13_10)$(13_10)/*Pra fabiana conseguir chegar ate o final$(13_10)global.player_hp = 50;*/$(13_10)$(13_10)// Get the player's input$(13_10)key_right = keyboard_check(vk_right);$(13_10)key_left = -keyboard_check(vk_left);$(13_10)key_up = keyboard_check_pressed(vk_up);$(13_10)key_down = keyboard_check_pressed(vk_down);$(13_10)$(13_10)key_space = keyboard_check(vk_space);$(13_10)key_nextW = keyboard_check_pressed(ord("E"));$(13_10)key_previousW = -keyboard_check_pressed(ord("Q"));$(13_10)$(13_10)// Control the game menu$(13_10)if (current == game.menu) {$(13_10)	if (key_down) {$(13_10)		menu_opt++;$(13_10)		if (menu_opt > 3) menu_opt = 0;$(13_10)	} else if (key_up) {$(13_10)		menu_opt--;$(13_10)		if (menu_opt < 0) menu_opt = 3;$(13_10)	}$(13_10)}$(13_10)$(13_10)// Control the player	$(13_10)move = key_left + key_right;$(13_10)		$(13_10)// Horizontal collision$(13_10)if(place_meeting(x+hsp, y, obj_wall)) {$(13_10)	while(!place_meeting(x+sign(hsp), y, obj_wall)) {$(13_10)		x += sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)x += hsp;$(13_10)		$(13_10)// Vertical collision$(13_10)if(place_meeting(x, y+vsp, obj_wall)) {$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall)) {$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)if (collision_point(x+15, y+17, obj_fake_wall, false, false) && collision_point(x-15, y+17, obj_fake_wall, false, false)){$(13_10)		with (instance_place(x, y+1, obj_fake_wall)){$(13_10)			speed = 1;$(13_10)			alarm[0] = 3 * room_speed;$(13_10)		}$(13_10)		vsp += 1;$(13_10)}$(13_10)y += vsp;$(13_10)		$(13_10)// Gravity$(13_10)if(!place_meeting(x, y+1, obj_wall)) {$(13_10)	vsp += grav;$(13_10)}$(13_10)$(13_10)// Timer$(13_10)secs += (delta_time*0.000001)*room_speed;$(13_10)$(13_10)// Weapon Select$(13_10)act_weapon += key_nextW + key_previousW;$(13_10)$(13_10)if(act_weapon > global.max_weapon) {$(13_10)	act_weapon = 0;$(13_10)}$(13_10)else if(act_weapon < 0) {$(13_10)	act_weapon = global.max_weapon;$(13_10)}$(13_10)$(13_10)switch(act_weapon) {$(13_10)	case 0:$(13_10)		equiped = "MEELE";$(13_10)	break;$(13_10)	case 1:$(13_10)		equiped = "JETPACK";$(13_10)	break;$(13_10)	case 2:$(13_10)		equiped = "GUN";$(13_10)	break;$(13_10)}$(13_10)$(13_10)if(!vulnerable && state != player.dead) {$(13_10)	if (floor(image_index) < 5 || floor(image_index) > 6)$(13_10)		image_index = 5;$(13_10)}$(13_10)$(13_10)switch (state) {$(13_10)	case player.idle:$(13_10)		scr_st_player_idle();		$(13_10)	break;$(13_10)	case player.walk:$(13_10)		scr_st_player_walk();$(13_10)	break;$(13_10)	case player.melee:$(13_10)		scr_st_player_melee();$(13_10)	break;$(13_10)	case player.hurt:$(13_10)		scr_st_player_hurt();$(13_10)	break;$(13_10)	case player.dead:$(13_10)		scr_st_player_dead();$(13_10)	break;$(13_10)	case player.jump:$(13_10)		scr_st_player_jump();$(13_10)	break;$(13_10)	case player.gun:$(13_10)		scr_st_player_gun();$(13_10)	break;$(13_10)	case player.steampack:$(13_10)		scr_st_player_steampack();$(13_10)	break;$(13_10)}"
///@descr Player's behaviour

/*Pra fabiana conseguir chegar ate o final
global.player_hp = 50;*/

// Get the player's input
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_up = keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(vk_down);

key_space = keyboard_check(vk_space);
key_nextW = keyboard_check_pressed(ord("E"));
key_previousW = -keyboard_check_pressed(ord("Q"));

// Control the game menu
if (current == game.menu) {
	if (key_down) {
		menu_opt++;
		if (menu_opt > 3) menu_opt = 0;
	} else if (key_up) {
		menu_opt--;
		if (menu_opt < 0) menu_opt = 3;
	}
}

// Control the player	
move = key_left + key_right;
		
// Horizontal collision
if(place_meeting(x+hsp, y, obj_wall)) {
	while(!place_meeting(x+sign(hsp), y, obj_wall)) {
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;
		
// Vertical collision
if(place_meeting(x, y+vsp, obj_wall)) {
	while(!place_meeting(x, y+sign(vsp), obj_wall)) {
		y += sign(vsp);
	}
	vsp = 0;
}
if (collision_point(x+15, y+17, obj_fake_wall, false, false) && collision_point(x-15, y+17, obj_fake_wall, false, false)){
		with (instance_place(x, y+1, obj_fake_wall)){
			speed = 1;
			alarm[0] = 3 * room_speed;
		}
		vsp += 1;
}
y += vsp;
		
// Gravity
if(!place_meeting(x, y+1, obj_wall)) {
	vsp += grav;
}

// Timer
secs += (delta_time*0.000001)*room_speed;

// Weapon Select
act_weapon += key_nextW + key_previousW;

if(act_weapon > global.max_weapon) {
	act_weapon = 0;
}
else if(act_weapon < 0) {
	act_weapon = global.max_weapon;
}

switch(act_weapon) {
	case 0:
		equiped = "MEELE";
	break;
	case 1:
		equiped = "JETPACK";
	break;
	case 2:
		equiped = "GUN";
	break;
}

if(!vulnerable && state != player.dead) {
	if (floor(image_index) < 5 || floor(image_index) > 6)
		image_index = 5;
}

switch (state) {
	case player.idle:
		scr_st_player_idle();		
	break;
	case player.walk:
		scr_st_player_walk();
	break;
	case player.melee:
		scr_st_player_melee();
	break;
	case player.hurt:
		scr_st_player_hurt();
	break;
	case player.dead:
		scr_st_player_dead();
	break;
	case player.jump:
		scr_st_player_jump();
	break;
	case player.gun:
		scr_st_player_gun();
	break;
	case player.steampack:
		scr_st_player_steampack();
	break;
}/**/