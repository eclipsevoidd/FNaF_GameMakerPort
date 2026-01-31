var _dt = delta_time / 1000000 // converting delta time (microseconds) to seconds
timeAccumulator += _dt;

var endFadein = 1.01;
var endWait = 2.1667;

if (timeAccumulator >= endWait) {
	image_alpha -= alphaRate * _dt;
}

if (image_alpha <= 0) {
	instance_create_depth(1216, 672, 0, oLoadClock);
	sprite_prefetch_multi([sOffice, sFan, sDoorButtonsLeft, sDoorButtonsRight, sFlipAnimation]);
	room_goto(rm_Office);
	instance_destroy();
}