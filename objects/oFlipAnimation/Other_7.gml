if (global.camUp == false) {
	audio_play_sound(snd_MiniDV_Tape_Eject_1, 0, 0, .25);
	if (image_speed == 1) {
		global.camUp = true;
	}
}
instance_destroy();