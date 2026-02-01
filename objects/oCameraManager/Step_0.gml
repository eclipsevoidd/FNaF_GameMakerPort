if (global.camUp) {
    if (!instance_exists(oBlipFlash) && flashDone == false) {
        var camBlip = instance_create_depth(0, 0, -1000, oBlipFlash);
		flashDone = true;
		camBlip.image_index = 0;
		camStatic = instance_create_depth(0, 0, 0, oCamStatic);
		instance_create_depth(0, -1, 0, oCamBorder);
        instance_create_depth(92, 76, 0, oCamBall);
		instance_create_depth(848, 313, 0, oCamMap);
		instance_create_depth(832, 292, -1, oCamLocation);
		
		for (var i = 0; i < array_length(buttonCoords); i++) {
			var buttonPos = buttonCoords[i];
			var buttonInstance = instance_create_depth(buttonPos.x, buttonPos.y, -1, oCameraButton);
			buttonInstance.myID = i;

			camButtons[i] = buttonInstance;
			var textPos = buttonTextCoords[i];
			
			var txt = instance_create_depth(textPos.x, textPos.y, -2, oCamButtonText);
			txt.image_index = i;
			camText[i] = txt;
		}
		
    }
	
	if (!position_meeting(mouse_x, mouse_y, oFlipTrigger)) {
			instance_activate_object(oFlipPanel);
	}
} else {
	flashDone = false;
	instance_destroy(oCamStatic);
	instance_destroy(oCamBorder);
	instance_destroy(oCamBall);
	instance_destroy(oCamMap);
	instance_destroy(oCamLocation);
	
	for (var i = 0; i < array_length(camButtons); i++) {
            instance_destroy(camButtons[i]);
            instance_destroy(camText[i]);
        }
        camButtons = []; // clearing arrays to prevent memory leak
        camText = [];
}

if (!global.camUp && !instance_exists(oFlipAnimation))
	instance_activate_object(oFlipPanel);