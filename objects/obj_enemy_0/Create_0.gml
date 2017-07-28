/// @description Initialize Variables

enum enemy {
	idle,
	walk,
	jump,
	dead
}

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
perimeter = 200;
allow_jump = true;

// State
state = enemy.idle;
num_lives = 1;
destroy = true;