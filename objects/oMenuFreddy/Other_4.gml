audio_play_sound(darkness_music, 0, true);
audio_play_sound(mus_static, 0, false);

oNightHover.image_alpha = 0;

var opacTimer = time_source_create(time_source_game, 0.09, time_source_units_seconds, RandomOpac, [], -1);
time_source_start(opacTimer);
