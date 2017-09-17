/// @description Player HUD

draw_set_font(font);

if(current == game.menu) {
		
	draw_set_halign(fa_center);
	if (show_menu) {
		draw_sprite(spr_gamelogo, -1, 480, 250);
	
		if (menu_opt == 0) {
			draw_set_color(c_yellow);
		}
		else draw_set_color(c_white);
		draw_text(480, 420, "Jogar");
		
		if (menu_opt == 1) {
			draw_set_color(c_yellow);
		}
		else draw_set_color(c_white);
		draw_text(480, 450, "Instrucoes");
		
		if (menu_opt == 2) {
			draw_set_color(c_yellow);
		}
		else draw_set_color(c_white);
		draw_text(480, 480, "Creditos");
		
		if (menu_opt == 3) {
			draw_set_color(c_yellow);
		}
		else draw_set_color(c_white);
		draw_text(480, 510, "Sair");
	}	
	
	if (show_controls) {
			draw_set_font(bigfont);
			draw_text(480, 140, "Instrucoes");
			
			draw_set_font(font);
			draw_set_halign(fa_left);
			draw_text(200, 240, "o Use as setas para se mover");
			draw_text(200, 280, "o Aperte ESPACO para usar o item equipado");
			draw_text(200, 320, "o Use seu martelo para abrir portas");
			draw_text(200, 360, "o Use seu jetpack para chegar em lugares mais altos");
			draw_text(200, 400, "o Troque o item equipado usando Q e E");
			draw_text(200, 440, "o Aperte ESC para sair do jogo");
	}
		
	if (show_credits) {
			draw_set_font(bigfont);
			draw_text(480, 140, "Desenvolvimento & Arte");
			draw_set_font(font);
			draw_text(480, 200, "Eleazar Fernando");
			draw_text(480, 230, "Fabiana Dalacqua");
			draw_text(480, 260, "Gabriel Pupo");
				
			draw_set_font(bigfont);				
			draw_text(480, 340, "Musica");
			draw_set_font(font);
			draw_text(480, 400, "Pi");
				
			draw_set_font(bigfont);				
			draw_text(480, 480, "Tutoria");
			draw_set_font(font);
			draw_text(480, 540, "William Ferreira");
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