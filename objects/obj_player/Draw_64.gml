/// @description Player HUD
seconds = "";
minutes = "";

switch (current) {
	case game.menu:
	
	break;
	case game.play:
		draw_text(30, 5, "HP");
		draw_healthbar(60, 10, 260, 20, (global.player_hp/max_hp)*100, c_black, c_red, c_lime, 0, true, false);
		draw_text(300, 5, equiped);

		seconds = secs div 60;
		if(seconds div 10 < 1) {
			seconds = "0" + string(secs div 60);
		}
		minutes = secs div 3600;
		if(minutes div 10 < 1) {
			minutes = "0" + string(secs div 3600);
		}
		
		draw_text(905, 5, string(minutes) + ":" + string(seconds));
	break;
	case game.over:
	
	break;
}