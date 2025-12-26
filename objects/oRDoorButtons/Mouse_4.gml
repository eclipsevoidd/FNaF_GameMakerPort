if (id == doorR) {
    if (!animating) {
        if (closed == false) {
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
} else if (id == lightR) {
	with (oLDoorButtons) {
        if (lighton == true) {
            oDoorButtonsLeft.image_index--;
            lighton = false;
        }
	}
	
    audio_stop_sound(snd_BallastHumMedium2);

    if (lighton == false) {
        oDoorButtonsRight.image_index++;
        lighton = true;
    } else {
        oDoorButtonsRight.image_index--;
        lighton = false;
        oOffice.image_index = 0;
        audio_stop_sound(snd_BallastHumMedium2);
    }
}