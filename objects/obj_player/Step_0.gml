/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C20E891
/// @DnDArgument : "code" "	//==== Get the player's input$(13_10)	key_right = keyboard_check(ord("D"));$(13_10)	key_left = -keyboard_check(ord("A"));$(13_10)	key_up = keyboard_check_pressed(ord("W"));$(13_10)	key_space = keyboard_check(vk_space);$(13_10)	key_nextW = keyboard_check_pressed(ord("E"));$(13_10)	key_previousW = -keyboard_check_pressed(ord("Q"));$(13_10)	$(13_10)if (not dead) {$(13_10)	//==== React to inputs$(13_10)	move = key_left + key_right;$(13_10)$(13_10)	//==== Left and Right Moving$(13_10)	if (move != 0) {$(13_10)		hsp = move * movespeed;$(13_10)		hsp = clamp(hsp, -hsp_max, hsp_max);$(13_10)	} else {$(13_10)		hsp = 0;$(13_10)	}$(13_10)$(13_10)	if (sign(hsp) != 0) {$(13_10)		image_xscale = sign(hsp);$(13_10)	}$(13_10)$(13_10)	//==== Gravity check and Jump$(13_10)	if(!place_meeting(x, y+1, obj_wall)) {$(13_10)		vsp += grav;$(13_10)	} else {$(13_10)		if (key_up) {$(13_10)			vsp = jumpheight;$(13_10)		}$(13_10)	}$(13_10)$(13_10)	//==== Horizontal Collision$(13_10)	if(place_meeting(x+hsp, y, obj_wall)) {$(13_10)		while(!place_meeting(x+sign(hsp), y, obj_wall)) {$(13_10)			x += sign(hsp);$(13_10)		}$(13_10)		hsp = 0;$(13_10)	}$(13_10)	x += hsp;$(13_10)$(13_10)	//==== Vertical Collision$(13_10)	if(place_meeting(x, y+vsp, obj_wall)) {$(13_10)		while(!place_meeting(x, y+sign(vsp), obj_wall)) {$(13_10)			y += sign(vsp);$(13_10)		}$(13_10)		vsp = 0;$(13_10)	}$(13_10)	y += vsp;$(13_10)$(13_10)	//==== Meele Hitbox$(13_10)	$(13_10)	selectweapon = key_nextW + key_previousW;$(13_10)	$(13_10)	weapon += selectweapon;$(13_10)	if(weapon == 2){$(13_10)		weapon = 0;$(13_10)	}$(13_10)	if(weapon == -1){$(13_10)		weapon = 1;$(13_10)	}$(13_10)	if(key_space) {$(13_10)		if(weapon == 0){$(13_10)			with(instance_create_depth(x, y, 0, obj_hitbox)) {$(13_10)				image_xscale = other.image_xscale;$(13_10)		$(13_10)				with(instance_place(x, y, obj_enemy)) { $(13_10)					obj_enemy.sprite_index = spr_enemyDead;$(13_10)					obj_enemy.dead = true;$(13_10)				}$(13_10)				with(instance_place(x, y, obj_doorNext)) {$(13_10)					room_goto_next();$(13_10)				}$(13_10)				with(instance_place(x, y, obj_doorPrevious)) {$(13_10)					room_goto_previous();$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)		else if(weapon == 1){$(13_10)			if(cantshoot == 0){$(13_10)				var bala = instance_create_depth(x,y, 0, obj_bullet);$(13_10)				bala.hspeed *= image_xscale;$(13_10)				cantshoot = 1;$(13_10)				alarm[0] = 3*room_speed;$(13_10)				$(13_10)				/*if(place_meeting(x,y,)) { $(13_10)					obj_enemy.sprite_index = spr_enemyDead;$(13_10)					obj_enemy.dead = true;$(13_10)				}*/$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}"
	//==== Get the player's input
	key_right = keyboard_check(ord("D"));
	key_left = -keyboard_check(ord("A"));
	key_up = keyboard_check_pressed(ord("W"));
	key_space = keyboard_check(vk_space);
	key_nextW = keyboard_check_pressed(ord("E"));
	key_previousW = -keyboard_check_pressed(ord("Q"));
	
if (not dead) {
	//==== React to inputs
	move = key_left + key_right;

	//==== Left and Right Moving
	if (move != 0) {
		hsp = move * movespeed;
		hsp = clamp(hsp, -hsp_max, hsp_max);
	} else {
		hsp = 0;
	}

	if (sign(hsp) != 0) {
		image_xscale = sign(hsp);
	}

	//==== Gravity check and Jump
	if(!place_meeting(x, y+1, obj_wall)) {
		vsp += grav;
	} else {
		if (key_up) {
			vsp = jumpheight;
		}
	}

	//==== Horizontal Collision
	if(place_meeting(x+hsp, y, obj_wall)) {
		while(!place_meeting(x+sign(hsp), y, obj_wall)) {
			x += sign(hsp);
		}
		hsp = 0;
	}
	x += hsp;

	//==== Vertical Collision
	if(place_meeting(x, y+vsp, obj_wall)) {
		while(!place_meeting(x, y+sign(vsp), obj_wall)) {
			y += sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;

	//==== Meele Hitbox
	
	selectweapon = key_nextW + key_previousW;
	
	weapon += selectweapon;
	if(weapon == 2){
		weapon = 0;
	}
	if(weapon == -1){
		weapon = 1;
	}
	if(key_space) {
		if(weapon == 0){
			with(instance_create_depth(x, y, 0, obj_hitbox)) {
				image_xscale = other.image_xscale;
		
				with(instance_place(x, y, obj_enemy)) { 
					obj_enemy.sprite_index = spr_enemyDead;
					obj_enemy.dead = true;
				}
				with(instance_place(x, y, obj_doorNext)) {
					room_goto_next();
				}
				with(instance_place(x, y, obj_doorPrevious)) {
					room_goto_previous();
				}
			}
		}
		else if(weapon == 1){
			if(cantshoot == 0){
				var bala = instance_create_depth(x,y, 0, obj_bullet);
				bala.hspeed *= image_xscale;
				cantshoot = 1;
				alarm[0] = 3*room_speed;
				
				/*if(place_meeting(x,y,)) { 
					obj_enemy.sprite_index = spr_enemyDead;
					obj_enemy.dead = true;
				}*/
			}
		}
	}
}/**/