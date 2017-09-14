/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6D4BA2FB
/// @DnDArgument : "code" "/// @description Initialize Variables$(13_10)$(13_10)// Horizontal Movement$(13_10)hsp = 0;$(13_10)hsp_max = 28;$(13_10)movespeed = 4;$(13_10)dir = 1;$(13_10)$(13_10)// Vertical Movement$(13_10)vsp = 0;$(13_10)grav = .9;$(13_10)$(13_10)// Attack Jump Perimeter$(13_10)jumpheight = -12;$(13_10)perimeter = 400;$(13_10)allow_jump = true;$(13_10)canshoot = true;$(13_10)reload = 0;$(13_10)gun_speed = 2.5;$(13_10)randomize();$(13_10)$(13_10)// State Machine$(13_10)/*enum enemy {$(13_10)	idle,$(13_10)	chase,$(13_10)	jump,$(13_10)	dead$(13_10)}*/$(13_10)$(13_10)// Status$(13_10)state = enemy.chase;$(13_10)num_lives = 5;$(13_10)destroy = true;$(13_10)invencible = false;$(13_10)damage = 10;$(13_10)hurt = false;"
/// @description Initialize Variables

// Horizontal Movement
hsp = 0;
hsp_max = 28;
movespeed = 4;
dir = 1;

// Vertical Movement
vsp = 0;
grav = .9;

// Attack Jump Perimeter
jumpheight = -12;
perimeter = 400;
allow_jump = true;
canshoot = true;
reload = 0;
gun_speed = 2.5;
randomize();

// State Machine
/*enum enemy {
	idle,
	chase,
	jump,
	dead
}*/

// Status
state = enemy.chase;
num_lives = 5;
destroy = true;
invencible = false;
damage = 10;
hurt = false;/**/