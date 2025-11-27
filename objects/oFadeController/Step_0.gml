switch(room) {
	case rm_WarningScreen:
		if ((mouse_check_button_pressed(mb_left) || 
		keyboard_check_pressed(vk_enter))
		&& !instance_exists(oFade)) {
		
		
		
		if (time_source_exists(myTimer)) {
			time_source_destroy(myTimer); 
		}
		
		fadeToRoom(rm_MainMenu, 61, c_black);
		texture_prefetch(sStatic);
	}
	break;
}	

if (keyboard_check(vk_escape)) {
	game_end();
}