/// @description Player HUD
switch (current) {
	case game.menu:
	
	break;
	case game.play:
		draw_text(room_width-42, 7, score);
		draw_text(42, 7, string(secs div 3600) + ":" + string(secs div 60));
		draw_text(42, room_height-26, "HP");
		draw_healthbar(65, room_height-20, 250, room_height-10, (global.player_hp/max_hp)*100, c_black, c_red, c_lime, 0, true, false);
		draw_text(300, room_height-26, equiped);
	break;
	case game.over:
	
	break;
}