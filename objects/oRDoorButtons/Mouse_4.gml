if (id == doorR) {
	if (!animating) {
	    if (!closed) {
	        oRightDoor.image_speed = 1;
	        animating = true;
			oDoorButtonsRight.image_index += 2;
	    } else {
	        oRightDoor.image_index = oRightDoor.image_number - 1;
	        oRightDoor.image_speed = -1;
			oDoorButtonsRight.image_index -= 2;
	        animating = true;
	    }
	
	    if (!audio_played) {
	        audio_play_sound(snd_SFXBible_12478, 0, 0);
	        audio_played = true;
	    }
	}	
}