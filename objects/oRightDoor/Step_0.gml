if (image_speed > 0 && image_index >= image_number - 1) {
    image_speed = 0;
    image_index = image_number - 1;
    
    oRDoorButtons.closed = 2;
    oRDoorButtons.animating = false;
    oRDoorButtons.audio_played = false; 
}

if (image_speed < 0 && image_index <= 0) {
    image_speed = 0;
    image_index = 0;
    
    oRDoorButtons.closed = 0;
    oRDoorButtons.animating = false;
	oRDoorButtons.audio_played = false;
}