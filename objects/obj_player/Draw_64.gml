/// @description Player HUD
switch (current) {
	case game.menu:
	
	break;
	case game.play:
		draw_text(room_width-42, 7, score);
		draw_text(42, 7, string(secs div 3600) + ":" + string(secs div 60));
		draw_text(42, room_height-26, equiped);
	break;
	case game.over:
	
	break;
}