if (image_speed > 0 && image_index >= image_number - 1) {
    image_speed = 0;
    image_index = image_number - 1;
    
    oLDoorButtonBBox.closed = 2;
    oLDoorButtonBBox.animating = false;
    oLDoorButtonBBox.audio_played = false; 
}

if (image_speed < 0 && image_index <= 0) {
    image_speed = 0;
    image_index = 0;
    
    oLDoorButtonBBox.closed = 0;
    oLDoorButtonBBox.animating = false;
	oLDoorButtonBBox.audio_played = false;
}