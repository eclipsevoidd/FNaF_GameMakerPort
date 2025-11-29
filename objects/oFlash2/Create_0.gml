randomize();
self.FlashVisibility = function() {
	switch(irandom(3)) {
		case 1:
		visible = true;
		break;
		default:
		visible = false;
		break;
	}
}

self.FlashOpac = function() {
	image_alpha = (random(10) + 100) / 255;	
}

flashTimer = time_source_create(time_source_game, 0.30, time_source_units_seconds, self.FlashVisibility, [], -1);
flashVisTimer = time_source_create(time_source_game, 0.08, time_source_units_seconds, self.FlashOpac, [], -1);
time_source_start(flashTimer);
time_source_start(flashVisTimer);