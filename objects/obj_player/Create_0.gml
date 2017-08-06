/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28EE431C
/// @DnDArgument : "code" "/// @description Initialize variables$(13_10)$(13_10)// Horizontal Movement$(13_10)hsp = 0;$(13_10)hsp_max = 28;$(13_10)movespeed = 4;$(13_10)$(13_10)// Vertical Movement$(13_10)vsp = 0;$(13_10)jumpheight = -14;$(13_10)jumps_max = 2;$(13_10)jumps = 0;$(13_10)grav = .9;$(13_10)$(13_10)// Attack $(13_10)damage = 0;$(13_10)act_weapon = 0;$(13_10)can_shoot = true;$(13_10)equiped = "Meele";$(13_10)$(13_10)// Timer$(13_10)secs = 0;$(13_10)reset = true;$(13_10)$(13_10)//$(13_10)sprite_hitbox = spr_hitbox;$(13_10)state = player.idle;$(13_10)current = game.play;$(13_10)$(13_10)"
/// @description Initialize variables

// Horizontal Movement
hsp = 0;
hsp_max = 28;
movespeed = 4;

// Vertical Movement
vsp = 0;
jumpheight = -14;
jumps_max = 2;
jumps = 0;
grav = .9;

// Attack 
damage = 0;
act_weapon = 0;
can_shoot = true;
equiped = "Meele";

// Timer
secs = 0;
reset = true;

//
sprite_hitbox = spr_hitbox;
state = player.idle;
current = game.play;