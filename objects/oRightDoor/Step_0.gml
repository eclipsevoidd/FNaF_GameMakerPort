if (image_speed > 0 && image_index >= image_number - 1) {
    image_speed = 0;
    image_index = image_number - 1;
    
    oRDoorButtons.closed = true;
    oRDoorButtons.animating = false;
    oRDoorButtons.audio_played = false; 
}

if (image_speed < 0 && image_index <= 0) {
    image_speed = 0;
    image_index = 0;
    
    oRDoorButtons.closed = false;
    oRDoorButtons.animating = false;
	oRDoorButtons.audio_played = false;
}