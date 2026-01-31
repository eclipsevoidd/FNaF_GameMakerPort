if (id == doorL && global.camUp == false) {
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
} else if (id == lightL && global.camUp == false) {
    // we use with() {} here to find the correct instance for lighton
	// because GML sometimes finds the wrong instance (like doorL instead of lightL)
    with (oRDoorButtonBBox) {
        if (lighton == true) {
            oDoorButtonsRight.image_index--; 
            lighton = false;
        }
    }

    audio_stop_sound(snd_BallastHumMedium2);
	
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