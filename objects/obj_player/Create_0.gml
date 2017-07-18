/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28EE431C
/// @DnDArgument : "code" "///Initialize variables$(13_10)hsp = 0;$(13_10)hsp_max = 28;$(13_10)vsp = 0;$(13_10)movespeed = 4;$(13_10)jumpheight = -14;$(13_10)grav = .9;$(13_10)damage = 0;$(13_10)weapon = 0;$(13_10)cantshoot = 0;$(13_10)reset = false;$(13_10)$(13_10)enum player {$(13_10)	dead,$(13_10)	idle,$(13_10)	walk,$(13_10)	melee,$(13_10)	jump,$(13_10)	gun$(13_10)}$(13_10)$(13_10)state = player.idle;$(13_10)"
///Initialize variables
hsp = 0;
hsp_max = 28;
vsp = 0;
movespeed = 4;
jumpheight = -14;
grav = .9;
damage = 0;
weapon = 0;
cantshoot = 0;
reset = false;

enum player {
	dead,
	idle,
	walk,
	melee,
	jump,
	gun
}

state = player.idle;