if (global.camUp == false) {
	if (image_speed == 1) {
		oOffice.image_index = 3;
		global.officeItemPositions = {
			office : oOffice.x,
			fan : oFan.x,
			lButton : oDoorButtonsLeft.x,
			rButton : oDoorButtonsRight.x,
			lButtonBBox: oLDoorButtonBBox.x,
			rButtonBBox: oRDoorButtonBBox.x,
			honk : oFreddyHonk.x,
			ldoor : oLeftDoor.x,
			rdoor : oRightDoor.x
		};
		
		with (oRDoorButtonBBox) {
			if (lighton == true) {
				oDoorButtonsRight.image_index--; 
				lighton = false;
			}
		}
		
		with (oLDoorButtonBBox) {
			if (lighton == true) {
				oDoorButtonsLeft.image_index--;
				lighton = false;
			}
		}
		
		audio_stop_sound(snd_BallastHumMedium2);
		
		global.camUp = true;
		audio_play_sound(snd_MiniDV_Tape_Eject_1, 0, 0, .25);
	}
}
instance_destroy();