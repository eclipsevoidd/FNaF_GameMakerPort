if (global.camUp) {
	x = oCameraMovement.x - 960;
}

if (global.camUp) {
    var _target_sprite = getCameraSprite(global.currentCam);
    
    if (sprite_index != _target_sprite) {
        sprite_index = _target_sprite;
    }
} else {
    if (sprite_index != sOffice) {
        sprite_index = sOffice;
        image_index = 0; 
    }
    
}