if (global.camUp == true) {
    if (!instance_exists(oBlipFlash) && flashDone == false) {
        var camBlip = instance_create_depth(0, 0, 0, oBlipFlash);
		camStatic = instance_create_depth(0, 0, 0, oCamStatic);
		instance_create_depth(0, 1, 0, oCamBorder);
        camBlip.image_index = 0;
		flashDone = true;
    }
} else {
	flashDone = false;
	instance_destroy(oCamStatic);
	instance_destroy(oCamBorder);
}