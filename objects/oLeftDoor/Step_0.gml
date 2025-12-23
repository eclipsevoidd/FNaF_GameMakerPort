if (image_speed > 0 && image_index >= image_number - 1) {
    image_speed = 0;
    image_index = image_number - 1;
    
    oLDoorButtons.closed = true;
    oLDoorButtons.animating = false;
    oLDoorButtons.audio_played = false; 
}

if (image_speed < 0 && image_index <= 0) {
    image_speed = 0;
    image_index = 0;
    
    oLDoorButtons.closed = false;
    oLDoorButtons.animating = false;
	oLDoorButtons.audio_played = false;
}