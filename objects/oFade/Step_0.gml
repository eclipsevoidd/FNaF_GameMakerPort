timer++;
if (timer >= duration) {
		room_goto(targetRoom);
		instance_destroy();
}
	
alpha = timer / duration;