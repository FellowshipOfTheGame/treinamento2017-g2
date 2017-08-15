/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 467A3296
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)move = 0;$(13_10)$(13_10)move -= keyboard_check_pressed(vk_up);$(13_10)move += keyboard_check_pressed(vk_down);$(13_10)$(13_10)cursor_pos += move;$(13_10)if (cursor_pos < 0) cursor_pos = array_length_1d(_menu) - 1;$(13_10)if (cursor_pos > array_length_1d(_menu)-1) cursor_pos = 0;$(13_10)$(13_10)press = keyboard_check(vk_space);$(13_10)if (press == 1) {$(13_10)	// se cursor está em "Jogar"$(13_10)	room_goto_next();$(13_10)}"
/// @description Execute Code

move = 0;

move -= keyboard_check_pressed(vk_up);
move += keyboard_check_pressed(vk_down);

cursor_pos += move;
if (cursor_pos < 0) cursor_pos = array_length_1d(_menu) - 1;
if (cursor_pos > array_length_1d(_menu)-1) cursor_pos = 0;

press = keyboard_check(vk_space);
if (press == 1) {
	// se cursor está em "Jogar"
	room_goto_next();
}