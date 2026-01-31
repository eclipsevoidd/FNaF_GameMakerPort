if (global.camUp) {
    if (!instance_exists(oBlipFlash) && flashDone == false) {
        var camBlip = instance_create_depth(0, 0, -1000, oBlipFlash);
		flashDone = true;
		camBlip.image_index = 0;
		camStatic = instance_create_depth(0, 0, 0, oCamStatic);
		instance_create_depth(0, -1, 0, oCamBorder);
        instance_create_depth(92, 76, 0, oCamBall);
		instance_create_depth(848, 313, 0, oCamMap);
		
		for (var i = 0; i < array_length(buttonCoords); i++) {
            var b_pos = buttonCoords[i];
            activeButtons[i] = instance_create_depth(b_pos.x, b_pos.y, -1, oCameraButton);
            
            var t_pos = buttonTextCoords[i];
            var txt = instance_create_depth(t_pos.x, t_pos.y, -2, oCamButtonText);
            txt.image_index = i;
            txt.image_speed = 0;
            
            activeText[i] = txt;
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
	
	for (var i = 0; i < array_length(activeButtons); i++) {
            instance_destroy(activeButtons[i]);
            instance_destroy(activeText[i]);
        }
        activeButtons = []; // clearing arrays to prevent memory leak
        activeText = [];
}

if (!global.camUp && !instance_exists(oFlipAnimation))
	instance_activate_object(oFlipPanel);