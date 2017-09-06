/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 67C06B53
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)global.door_room = fase2;$(13_10)// Level 1 = 0; Level 2 = 1; Level 3 = 2;$(13_10)global.max_weapon = 2;$(13_10)$(13_10)global.player_hp = 50;$(13_10)$(13_10)global.doors_passed = 0;$(13_10)$(13_10)enum player {	$(13_10)	idle,$(13_10)	walk,$(13_10)	melee,$(13_10)	jump,$(13_10)	gun,$(13_10)	steampack,$(13_10)	hurt,$(13_10)	dead$(13_10)}$(13_10)$(13_10)enum game {$(13_10)	menu,$(13_10)	play,$(13_10)	over$(13_10)}$(13_10)$(13_10)enum enemy {$(13_10)	idle,$(13_10)	walk,$(13_10)	jump,$(13_10)	chase,$(13_10)	hurt,$(13_10)	dead$(13_10)}$(13_10)$(13_10)room_goto_next();"
/// @description Execute Code

global.door_room = fase2;
// Level 1 = 0; Level 2 = 1; Level 3 = 2;
global.max_weapon = 2;

global.player_hp = 50;

global.doors_passed = 0;

enum player {	
	idle,
	walk,
	melee,
	jump,
	gun,
	steampack,
	hurt,
	dead
}

enum game {
	menu,
	play,
	over
}

enum enemy {
	idle,
	walk,
	jump,
	chase,
	hurt,
	dead
}

room_goto_next();