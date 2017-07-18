/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28EE431C
/// @DnDArgument : "code" "/// @description Initialize variables$(13_10)$(13_10)// Horizontal Movement$(13_10)hsp = 0;$(13_10)hsp_max = 28;$(13_10)movespeed = 4;$(13_10)$(13_10)// Vertical Movement$(13_10)vsp = 0;$(13_10)jumpheight = -14;$(13_10)jumps_max = 2;$(13_10)jumps = 0;$(13_10)grav = .9;$(13_10)$(13_10)// Attack $(13_10)damage = 0;$(13_10)act_weapon = 0;$(13_10)can_shoot = true;$(13_10)reset = false;$(13_10)$(13_10)enum player {$(13_10)	dead,$(13_10)	idle,$(13_10)	walk,$(13_10)	melee,$(13_10)	jump,$(13_10)	gun,$(13_10)	steampack$(13_10)}$(13_10)$(13_10)state = player.idle;$(13_10)"
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
reset = false;

enum player {
	dead,
	idle,
	walk,
	melee,
	jump,
	gun,
	steampack
}

state = player.idle;