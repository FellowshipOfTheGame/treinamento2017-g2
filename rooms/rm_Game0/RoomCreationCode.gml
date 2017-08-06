/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 63BA2618
/// @DnDArgument : "code" "/// @description Initialize next room and enums$(13_10)$(13_10)global.door_room = rm_2_Miniboss;$(13_10)$(13_10)// Level 1 = 0; Level 2 = 1; Level 3 = 2;$(13_10)global.max_weapon = 1;$(13_10)$(13_10)enum player {$(13_10)	dead,$(13_10)	idle,$(13_10)	walk,$(13_10)	melee,$(13_10)	jump,$(13_10)	gun,$(13_10)	steampack$(13_10)}$(13_10)$(13_10)enum game {$(13_10)	menu,$(13_10)	play,$(13_10)	over$(13_10)}$(13_10)$(13_10)enum enemy {$(13_10)	idle,$(13_10)	walk,$(13_10)	jump,$(13_10)	chase,$(13_10)	dead$(13_10)}"
/// @description Initialize next room and enums

global.door_room = rm_2_Miniboss;

// Level 1 = 0; Level 2 = 1; Level 3 = 2;
global.max_weapon = 1;

enum player {
	dead,
	idle,
	walk,
	melee,
	jump,
	gun,
	steampack
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
	dead
}