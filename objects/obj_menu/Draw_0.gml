/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70DB53A3
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)for (i = 0; i < array_length_1d(_menu); ++i) {$(13_10)	draw_text(x+(2*sprite_width), y+(sprite_height/2)+(padding*i), string(_menu[i]));$(13_10)}$(13_10)$(13_10)draw_sprite(sprite_index, 0, x+16, y+(cursor_pos*padding));"
/// @description Execute Code

for (i = 0; i < array_length_1d(_menu); ++i) {
	draw_text(x+(2*sprite_width), y+(sprite_height/2)+(padding*i), string(_menu[i]));
}

draw_sprite(sprite_index, 0, x+16, y+(cursor_pos*padding));