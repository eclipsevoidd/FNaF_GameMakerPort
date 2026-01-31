timer += delta_time / 1000000;

if (timer >= 1.0) {
	rand = irandom(3);
    timer -= 1.0;
}

image_alpha = (255 - (150 + irandom(50) + (rand * 15))) / 255; 
// we subtract, because in clickteam, 255 = invisible.
