timer += delta_time / 1000000;
if (timer >= 0.01) {
	rand_10 = irandom_range(1, 10);
	timer = 0;
}
if (lighton && !oRDoorButtonBBox.lighton) {
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

if (global.camUp) {
	image_alpha = 0;
    oFan.image_alpha = 0;
    oDoorButtonsLeft.image_alpha = 0;
    oDoorButtonsRight.image_alpha = 0;
    oLDoorButtonBBox.image_alpha = 0;
    oRDoorButtonBBox.image_alpha = 0;
    oFreddyHonk.image_alpha = 0;
    oLeftDoor.image_alpha = 0;
    oRightDoor.image_alpha = 0;
} else {
	image_alpha = 1;
    oFan.image_alpha = 1;
    oDoorButtonsLeft.image_alpha = 1;
    oDoorButtonsRight.image_alpha = 1;
    oLDoorButtonBBox.image_alpha = 1;
    oRDoorButtonBBox.image_alpha = 1;
    oFreddyHonk.image_alpha = 1;
    oLeftDoor.image_alpha = 1;
    oRightDoor.image_alpha = 1;
}