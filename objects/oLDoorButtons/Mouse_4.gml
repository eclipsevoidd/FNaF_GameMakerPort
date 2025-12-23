if (id == doorL) {
	if (!animating) {
	    if (!closed) {
	        oLeftDoor.image_speed = 1;
	        animating = true;
			oDoorButtonsLeft.image_index += 2;
	    } else {
	        oLeftDoor.image_index = oLeftDoor.image_number - 1;
	        oLeftDoor.image_speed = -1;
			oDoorButtonsLeft.image_index -= 2;
	        animating = true;
	    }
	
	    if (!audio_played) {
	        audio_play_sound(snd_SFXBible_12478, 0, 0);
	        audio_played = true;
	    }
	}	
}