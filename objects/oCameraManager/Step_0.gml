if (global.camUp) {
    if (!instance_exists(oBlipFlash) && flashDone == false) {
        var camBlip = instance_create_depth(0, 0, -1000, oBlipFlash);
		flashDone = true;
		camBlip.image_index = 0;
		camStatic = instance_create_depth(0, 0, 0, oCamStatic);
		instance_create_depth(0, -1, 0, oCamBorder);
        instance_create_depth(92, 76, 0, oCamBall);
    }
	
	if (!position_meeting(mouse_x, mouse_y, oFlipTrigger)) {
			instance_activate_object(oFlipPanel);
	}	
} else {
	flashDone = false;
	instance_destroy(oCamStatic);
	instance_destroy(oCamBorder);
	instance_destroy(oCamBall);
}

if (!global.camUp && !instance_exists(oFlipAnimation))
	instance_activate_object(oFlipPanel);