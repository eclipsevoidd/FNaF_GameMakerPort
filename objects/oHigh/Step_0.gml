if (id == leftHigh) {
	if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) && oOffice.x < 0) {
	oOffice.x += 5;
	oFan.x += 5;
	oDoorButtonsLeft.x += 5;
	oDoorButtonsRight.x += 5;
	oLDoorButtons. x += 5;
	oRDoorButtons. x += 5;
	oFreddyHonk. x += 5;
	oLeftDoor.x += 5;
	oRightDoor.x += 5;
	}
} else {
	if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) && oOffice.x > -320) {
	oOffice.x -= 5;
	oFan.x -= 5;
	oDoorButtonsLeft.x -= 5;
	oDoorButtonsRight.x -= 5;
	oLDoorButtons. x -= 5;
	oRDoorButtons. x -= 5;
	oFreddyHonk. x -= 5;
	oLeftDoor.x -= 5;
	oRightDoor.x -= 5;
	}
}