/// @description Player HUD
seconds = "";
minutes = "";

switch (current) {
	case game.menu:
		draw_set_halign(fa_center);
	if (not show_credits and not show_controls) {	
		if (menu_opt == 0) {
			draw_set_color(c_yellow);
			if (key_space) {
				room_goto(1);
				current = game.play;
				break;
			}
		}
		else draw_set_color(c_white);
		draw_text(481, 420, "Jogar");
		
		if (menu_opt == 1) {
			draw_set_color(c_yellow);
			if (key_space) {
				alarm[4] = 500*room_speed;
				show_controls = true;
			}
		}
		else draw_set_color(c_white);
		draw_text(481, 450, "Controles");
		
		if (menu_opt == 2) {
			draw_set_color(c_yellow);
			if (key_space) {
				alarm[4] = 500*room_speed;
				show_credits = true;
			}
		}
		else draw_set_color(c_white);
		draw_text(481, 480, "Creditos");
		
		if (menu_opt == 3) {
			draw_set_color(c_yellow);
			if (key_space) {
				game_end();	
			}
		}
		else draw_set_color(c_white);
		draw_text(481, 510, "Sair");
	}	
	
		if (show_controls) {
				draw_text(481, 300, "Use as setas para se mover");
				draw_text(481, 330, "Aperte a barra de espaco para pular");
				draw_text(481, 360, "Troque seu equipamento usando Q e E");
		}
		
		if (show_credits) {
				draw_text_transformed(481, 280, "Desenvolvimento", 2, 2, image_angle);
				draw_text(481, 340, "Eleazar Fernando");
				draw_text(481, 370, "Fabiana Dalacqua");
				draw_text(481, 400, "Gabriel Pupo");
				
				draw_text_transformed(481, 440, "Musica", 2, 2, image_angle);
				draw_text(481, 500, "Pi");
		}
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