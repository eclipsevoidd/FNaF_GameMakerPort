var _dt = delta_time / 1000000 // converting delta time (microseconds) to seconds
timeAccumulator += _dt;

var endFadein = 1.01;
var endWait = 2.1667;

if (timeAccumulator >= endWait) {
	image_alpha -= alphaRate * _dt;
}

if (image_alpha <= 0) {
	oLoadClock.image_alpha = 1;
	sprite_prefetch_multi([sOffice, sFan, sDoorButtonsLeft, sDoorButtonsRight]);
	room_goto(rm_Office);
	instance_destroy();
		
	
	
}