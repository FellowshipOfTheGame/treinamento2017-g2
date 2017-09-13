/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 598D37BD
/// @DnDArgument : "code" "/// @description Restart room$(13_10)room_restart();$(13_10)audio_stop_all();$(13_10)audio_play_sound(tema_principal, 1, true);$(13_10)global.player_hp = max_hp;"
/// @description Restart room
room_restart();
audio_stop_all();
audio_play_sound(tema_principal, 1, true);
global.player_hp = max_hp;