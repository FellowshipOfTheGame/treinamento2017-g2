/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28EE431C
/// @DnDArgument : "code" "/// @description Initialize variables$(13_10)$(13_10)// Horizontal Movement$(13_10)hsp = 0;$(13_10)hsp_max = 28;$(13_10)movespeed = 4;$(13_10)$(13_10)// Vertical Movement$(13_10)vsp = 0;$(13_10)jumpheight = -14;$(13_10)jumps_max = 1;$(13_10)jumps = 0;$(13_10)grav = .9;$(13_10)$(13_10)// Attack$(13_10)act_weapon = 0;$(13_10)can_shoot = true;$(13_10)equiped = "MEELE";$(13_10)$(13_10)// Timer$(13_10)secs = 0;$(13_10)reset = true;$(13_10)$(13_10)// Menu$(13_10)menu_opt = 0;$(13_10)show_menu = true;$(13_10)show_credits = false;$(13_10)show_controls = false;$(13_10)play_game = false;$(13_10)$(13_10)// Status$(13_10)max_hp = 50;$(13_10)global.player_hp = 50;$(13_10)damage_taken = 0;$(13_10)vulnerable = true;$(13_10)state = player.idle;$(13_10)current = game.play;$(13_10)$(13_10)// Music$(13_10)if(room == fase2){$(13_10)	audio_play_sound(tema_principal, 1, true);$(13_10)}"
/// @description Initialize variables

// Horizontal Movement
hsp = 0;
hsp_max = 28;
movespeed = 4;

// Vertical Movement
vsp = 0;
jumpheight = -14;
jumps_max = 1;
jumps = 0;
grav = .9;

// Attack
act_weapon = 0;
can_shoot = true;
equiped = "MEELE";

// Timer
secs = 0;
reset = true;

// Menu
menu_opt = 0;
show_menu = true;
show_credits = false;
show_controls = false;
play_game = false;

// Status
max_hp = 50;
global.player_hp = 50;
damage_taken = 0;
vulnerable = true;
state = player.idle;
current = game.play;

// Music
if(room == fase2){
	audio_play_sound(tema_principal, 1, true);
}