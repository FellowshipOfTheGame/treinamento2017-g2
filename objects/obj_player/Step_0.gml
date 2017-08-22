/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C20E891
/// @DnDArgument : "code" "// Get the player's input$(13_10)key_right = keyboard_check(ord("D"));$(13_10)key_left = -keyboard_check(ord("A"));$(13_10)key_up = keyboard_check_pressed(ord("W"));$(13_10)key_down = keyboard_check(ord("S"));$(13_10)key_space = keyboard_check(vk_space);$(13_10)key_nextW = keyboard_check_pressed(ord("E"));$(13_10)key_previousW = -keyboard_check_pressed(ord("Q"));$(13_10)$(13_10)// Control the player	$(13_10)move = key_left + key_right;$(13_10)		$(13_10)// Horizontal collision$(13_10)if(place_meeting(x+hsp, y, obj_wall)) {$(13_10)	while(!place_meeting(x+sign(hsp), y, obj_wall)) {$(13_10)		x += sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)x += hsp;$(13_10)		$(13_10)// Vertical collision$(13_10)if(place_meeting(x, y+vsp, obj_wall)) {$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall)) {$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)if (place_meeting(x, y+1, obj_fake_wall) ){$(13_10)		with (instance_place(x, y+1, obj_fake_wall)){$(13_10)			speed = 1;$(13_10)		}$(13_10)		vsp += 1;$(13_10)}$(13_10)y += vsp;$(13_10)		$(13_10)// Gravity$(13_10)if(!place_meeting(x, y+1, obj_wall)) {$(13_10)	vsp += grav;$(13_10)}$(13_10)$(13_10)// Timer$(13_10)secs += (delta_time*0.000001)*room_speed;$(13_10)$(13_10)// Weapon Select$(13_10)act_weapon += key_nextW + key_previousW;$(13_10)$(13_10)if(act_weapon > global.max_weapon) {$(13_10)	act_weapon = 0;$(13_10)}$(13_10)else if(act_weapon < 0) {$(13_10)	act_weapon = global.max_weapon;$(13_10)}$(13_10)$(13_10)switch(act_weapon) {$(13_10)	case 0:$(13_10)		equiped = "Meele";$(13_10)	break;$(13_10)	case 1:$(13_10)		equiped = "Steampack";$(13_10)	break;$(13_10)	case 2:$(13_10)		equiped = "Gun";$(13_10)	break;$(13_10)}$(13_10)$(13_10)switch (state) {$(13_10)	case player.idle:$(13_10)		scr_st_player_idle();		$(13_10)	break;$(13_10)	case player.walk:$(13_10)		scr_st_player_walk();$(13_10)	break;$(13_10)	case player.melee:$(13_10)		scr_st_player_melee();$(13_10)	break;$(13_10)	case player.hurt:$(13_10)		scr_st_player_hurt();$(13_10)	break;$(13_10)	case player.dead:$(13_10)		scr_st_player_dead();$(13_10)	break;$(13_10)	case player.jump:$(13_10)		scr_st_player_jump();$(13_10)	break;$(13_10)	case player.gun:$(13_10)		scr_st_player_gun();$(13_10)	break;$(13_10)	case player.steampack:$(13_10)		scr_st_player_steampack();$(13_10)	break;$(13_10)}"
// Get the player's input
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_up = keyboard_check_pressed(ord("W"));
key_down = keyboard_check(ord("S"));
key_space = keyboard_check(vk_space);
key_nextW = keyboard_check_pressed(ord("E"));
key_previousW = -keyboard_check_pressed(ord("Q"));

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
if (collision_point(x-15, y+17, obj_fake_wall, false, true) && collision_point(x+15, y+17, obj_fake_wall, false, true)){
	with(instance_place(x, y+1, obj_fake_wall)){
		speed = 1;
	}
	vsp += 1
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
		equiped = "Meele";
	break;
	case 1:
		equiped = "Steampack";
	break;
	case 2:
		equiped = "Gun";
	break;
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
}