/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 02EC86E4
/// @DnDArgument : "code" "/// @description Menu controller$(13_10)$(13_10)if (current == game.menu) {$(13_10)	if (show_menu) {$(13_10)			show_menu = false;$(13_10)			if (menu_opt == 0) {$(13_10)				room_goto(1);$(13_10)				current = game.play;$(13_10)			}$(13_10)			else if (menu_opt == 1)$(13_10)				show_controls = true;$(13_10)			else if (menu_opt == 2)$(13_10)				show_credits = true;$(13_10)			else if (menu_opt == 3)$(13_10)				game_end();$(13_10)	} else {$(13_10)			show_controls = false;$(13_10)			show_credits = false;$(13_10)			show_menu = true;$(13_10)	}$(13_10)}"
/// @description Menu controller

if (current == game.menu) {
	if (show_menu) {
			show_menu = false;
			if (menu_opt == 0) {
				room_goto(1);
				current = game.play;
			}
			else if (menu_opt == 1)
				show_controls = true;
			else if (menu_opt == 2)
				show_credits = true;
			else if (menu_opt == 3)
				game_end();
	} else {
			show_controls = false;
			show_credits = false;
			show_menu = true;
	}
}