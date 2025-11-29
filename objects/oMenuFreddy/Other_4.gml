randomize();

audio_play_sound(darkness_music, 0, true);
audio_play_sound(mus_static, 0, false);

oNightHover.image_alpha = 0;

self.freddyTwitch = function() { // we define freddyTwitch as a method variable
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

var opacTimer = time_source_create(time_source_game, 0.09, time_source_units_seconds, RandomOpac, [], -1);
var twitchTimer = time_source_create(time_source_game, 0.08, time_source_units_seconds, self.freddyTwitch, [], -1);
time_source_start(opacTimer);
time_source_start(twitchTimer);