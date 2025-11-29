randomize();
oNightHover.image_alpha = 0;

self.FreddyTwitch = function() { // we define freddyTwitch as a method variable
	switch(irandom(100)) {
		case 1:
		oMenuFreddy.image_index = 1;
		break;
		case 2:
		oMenuFreddy.image_index = 2;
		break;
		case 3:
		oMenuFreddy.image_index = 3;
		break;
		default:
		oMenuFreddy.image_index = 4;
		break;
	}
}

self.RandomOpac = function() {
	randomize();
	oStatic.image_alpha = (50 + irandom(100)) / 255;
}

opacTimer = time_source_create(time_source_game, 0.09, time_source_units_seconds, self.RandomOpac, [], -1);
twitchTimer = time_source_create(time_source_game, 0.08, time_source_units_seconds, self.FreddyTwitch, [], -1);
time_source_start(opacTimer);
time_source_start(twitchTimer);