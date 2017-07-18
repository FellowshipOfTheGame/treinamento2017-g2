/// @description Initialize Variables

// State
type = enemy.gap_detec;
dead = false;

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

enum enemy {
	gap_detec,
	jump,
	dead
}