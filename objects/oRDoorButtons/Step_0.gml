if (lighton) {
	if (oLDoorButtons.rand_10 > 1) {	
		oOffice.image_index = 2;
		if (!audio_is_playing(snd_BallastHumMedium2)) {
			audio_play_sound(snd_BallastHumMedium2, 0, true, 1);
		}
	} else {
		oOffice.image_index = 0;
		audio_stop_sound(snd_BallastHumMedium2);
	}
}