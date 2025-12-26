timer += delta_time / 1000000;
if (timer >= 0.01) {
	rand_10 = irandom_range(1, 10);
	timer = 0;
}
if (lighton && !oRDoorButtons.lighton) {
	if (rand_10 > 1) {
		oOffice.image_index = 1;
		if (!audio_is_playing(snd_BallastHumMedium2)) {
			audio_play_sound(snd_BallastHumMedium2, 0, true, 1);
		}
	} else {
		oOffice.image_index = 0;
		audio_stop_sound(snd_BallastHumMedium2);
	}
}