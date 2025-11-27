function fadeToRoom() {
	/// @arg room
	/// @arg duration
	/// @arg color

	// args
	var _room = argument[0];
	var _dur = argument[1];
	var _color = argument[2];

	// create
	var _inst = instance_create_depth(0, 0, 0, oFade);

	// set properties
	with (_inst) {
		targetRoom = _room;
		duration = _dur;
		color = _color;
	}
}