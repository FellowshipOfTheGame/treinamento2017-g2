/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70DB53A3
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)//draw_self();$(13_10)$(13_10)for (i = 0; i < array_length_1d(menu); ++i) {$(13_10)	draw_text(x+padding, y+(padding*i), string(menu[i]));$(13_10)}$(13_10)$(13_10)//draw_sprite(sprite_index, 0, x+16, y+(cursor_pos*padding));"
/// @description Execute Code

//draw_self();

for (i = 0; i < array_length_1d(menu); ++i) {
	draw_text(x+padding, y+(padding*i), string(menu[i]));
}

//draw_sprite(sprite_index, 0, x+16, y+(cursor_pos*padding));