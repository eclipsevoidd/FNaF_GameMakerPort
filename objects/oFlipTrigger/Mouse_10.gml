if (!instance_exists(oFlipAnimation)) {
	instance_create_depth(0, 0, 0, oFlipAnimation);
}

if (global.camUp = true) {
	global.camUp = false;
}

instance_deactivate_object(oFlipPanel);