/// @description Player HUD

draw_set_font(font);

if(current == game.menu) {
		
	draw_set_halign(fa_center);
	if (show_menu) {
		draw_sprite(spr_gamelogo, -1, 481, 250);
	
		if (menu_opt == 0) {
			draw_set_color(c_yellow);
		}
		else draw_set_color(c_white);
		draw_text(481, 420, "Jogar");
		
		if (menu_opt == 1) {
			draw_set_color(c_yellow);
		}
		else draw_set_color(c_white);
		draw_text(481, 450, "Controles");
		
		if (menu_opt == 2) {
			draw_set_color(c_yellow);
		}
		else draw_set_color(c_white);
		draw_text(481, 480, "Creditos");
		
		if (menu_opt == 3) {
			draw_set_color(c_yellow);
		}
		else draw_set_color(c_white);
		draw_text(481, 510, "Sair");
	}	
	
	if (show_controls) {
			draw_text(481, 300, "Use as setas para se mover");
			draw_text(481, 340, "Aperte ESPACO para usar o item equipado");
			draw_text(481, 380, "Use seu steampack para chegar em lugares mais altos");
			draw_text(481, 420, "Troque o item equipado usando Q e E");
			draw_text(481, 460, "Aperte ESC para sair do jogo");
	}
		
	if (show_credits) {
			draw_set_font(bigfont);
			draw_text(481, 140, "Desenvolvimento & Arte");
			draw_set_font(font);
			draw_text(481, 200, "Eleazar Fernando");
			draw_text(481, 230, "Fabiana Dalacqua");
			draw_text(481, 260, "Gabriel Pupo");
				
			draw_set_font(bigfont);				
			draw_text(481, 340, "Musica");
			draw_set_font(font);
			draw_text(481, 400, "Pi");
				
			draw_set_font(bigfont);				
			draw_text(481, 480, "Tutoria");
			draw_set_font(font);
			draw_text(481, 540, "William Ferreira");
	}
} else if (current == game.play) {
		draw_set_font(hudfont);
		draw_text(40, 5, "HP");
		draw_healthbar(60, 10, 260, 20, (global.player_hp/max_hp)*100, c_black, c_red, c_lime, 0, true, false);
		draw_text(320, 5, equiped);
		if (keyboard_check(vk_escape)) {
			current = game.menu;
			audio_stop_all();
			room_goto(0);
		}
} else if (current == game.over) {
	
	
}