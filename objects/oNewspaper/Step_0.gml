var _dt = delta_time / 1000000 // converting delta time (microseconds) to seconds
timeAccumulator += _dt;

var endFadein = 2.0;
var endWait = endFadein + 5.0;

if (timeAccumulator <= endFadein) {
	image_alpha += alphaRate * _dt;
	image_alpha = min(image_alpha, 1.0); // hacky way to make sure alpha doesn't go over 1.0
} else if (timeAccumulator <= endWait) {
	image_alpha = 1.0;
	
	if (keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left)) {
		timeAccumulator = endWait;
	}
} else {
	image_alpha -= alphaRate * _dt;
	
	if (image_alpha <= 0) {
		instance_destroy();
		audio_stop_sound(mus_darkness_music);
		audio_stop_sound(snd_static);
		room_goto(rm_NightLoad);
	}
}