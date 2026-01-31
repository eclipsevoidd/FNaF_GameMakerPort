if (image_speed > 0 && image_index >= image_number - 1) {
    image_speed = 0;
    image_index = image_number - 1;
    
    oRDoorButtonBBox.closed = 2;
    oRDoorButtonBBox.animating = false;
    oRDoorButtonBBox.audio_played = false; 
}

if (image_speed < 0 && image_index <= 0) {
    image_speed = 0;
    image_index = 0;
    
    oRDoorButtonBBox.closed = 0;
    oRDoorButtonBBox.animating = false;
	oRDoorButtonBBox.audio_played = false;
}