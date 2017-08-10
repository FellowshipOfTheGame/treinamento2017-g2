/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6D4BA2FB
/// @DnDArgument : "code" "/// @description Initialize Variables$(13_10)$(13_10)// Horizontal Movement$(13_10)hsp = 0;$(13_10)hsp_max = 28;$(13_10)movespeed = 4;$(13_10)dir = 1;$(13_10)$(13_10)// Vertical Movement$(13_10)vsp = 0;$(13_10)grav = .9;$(13_10)$(13_10)// Attack Jump Perimeter$(13_10)jumpheight = -12;$(13_10)perimeter = 400;$(13_10)allow_jump = true;$(13_10)canshoot = true;$(13_10)reload = 0;$(13_10)gun_speed = 2;$(13_10)randomize();$(13_10)$(13_10)// Status$(13_10)state = enemy.chase;$(13_10)num_lives = 4;$(13_10)destroy = true;$(13_10)invencible = false;$(13_10)damage = 2;"
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
gun_speed = 2;
randomize();

// Status
state = enemy.chase;
num_lives = 4;
destroy = true;
invencible = false;
damage = 2;