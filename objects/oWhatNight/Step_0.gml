var _dt = delta_time / 1000000 // converting delta time (microseconds) to seconds
timeAccumulator += _dt;

//sprite_prefetch_multi();  we will put all the office sprites here

var endFadein = 1.01;
var endWait = 2.1667;

if (timeAccumulator >= endWait) {
	image_alpha -= alphaRate * _dt;
}

if (image_alpha <= 0) {
	oLoadClock.image_alpha = 1;
	room_goto(rm_Office);
	instance_destroy();
		
	
	
}