if (!global.camUp) {
	if (id == leftLow) {
		if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) && oOffice.x < 0) {
			oOffice.x += 2;
			oFan.x += 2;
			oDoorButtonsLeft.x += 2;
			oDoorButtonsRight.x += 2;
			oLDoorButtonBBox.x += 2;
			oRDoorButtonBBox.x += 2;
			oFreddyHonk.x += 2;
			oLeftDoor.x += 2;
			oRightDoor.x += 2;
		}
	} else {
		if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) && oOffice.x > -320) {
			oOffice.x -= 2;
			oFan.x -= 2;
			oDoorButtonsLeft.x -= 2;
			oDoorButtonsRight.x -= 2;
			oLDoorButtonBBox.x -= 2;
			oRDoorButtonBBox.x -= 2;
			oFreddyHonk.x -= 2;
			oLeftDoor.x -= 2;
			oRightDoor.x -= 2;
		}
	}
}