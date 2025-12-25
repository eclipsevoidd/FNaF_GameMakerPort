if (id == doorL) {
	if (!animating) {
	    if (closed == false) {
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
} else if (id == lightL) {
	// Turn off the RIGHT light if it's on
	if (oRDoorButtons.lighton) {
		oRDoorButtons.image_index--;
		oRDoorButtons.lighton = false;
		oOffice.image_index = 0; // Force reset
		audio_stop_sound(snd_BallastHumMedium2);
	}
	
	if (lighton == false) {
		oDoorButtonsLeft.image_index++;
		lighton = true;
	} else {
		oDoorButtonsLeft.image_index--;
		lighton = false;
		oOffice.image_index = 0;
		audio_stop_sound(snd_BallastHumMedium2);
	}
}