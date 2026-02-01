audio_stop_sound(snd_CAMERA_VIDEO_LOA_601snd_05303);
audio_stop_sound(snd_put_down);

if (global.camUp == false) {
	image_index = 0;
	image_speed = 1;
	audio_play_sound(snd_CAMERA_VIDEO_LOA_601snd_05303, 0, 0);
} else {
	image_index = 9;
	image_speed = -1;
	global.camUp = false;
	oOffice.image_index = 0;
	audio_play_sound(snd_put_down, 0, 0);
	audio_stop_sound(snd_MiniDV_Tape_Eject_1);
	audio_sound_gain(snd_Buzz_Fan_Florescent2, 0.5);
	
	oOffice.x            = global.officeItemPositions.office;
	oFan.x               = global.officeItemPositions.fan;
	oDoorButtonsLeft.x   = global.officeItemPositions.lButton;
	oDoorButtonsRight.x  = global.officeItemPositions.rButton;
	oLDoorButtonBBox.x   = global.officeItemPositions.lButtonBBox;
	oRDoorButtonBBox.x   = global.officeItemPositions.rButtonBBox;
	oFreddyHonk.x        = global.officeItemPositions.honk;
	oLeftDoor.x          = global.officeItemPositions.ldoor;
	oRightDoor.x         = global.officeItemPositions.rdoor;
	
}



