function getCameraSprite(_id) { // underscore before id, since it's local
	switch(_id) {
		case 0: // Show Stage
			return sShowStage; // temporary, later we'll add if statements for different animatronic cases.
		case 1: // Dining Area
			return sDiningArea;
		case 2: // Pirate Cove
			return sPirateCove_0;
		case 3: // West Hall
			return sWestHall;
		case 4: // West Corner
			return sWestCorner;
		case 5: // Supply Closet
			return sSupplyCloset;
		case 6: // East Hall
			return sEastHall;
		case 7: // East Corner
			return sEastCorner;
		case 8: // Backstage
			return sBackstage;
		case 9: // Kitchen
			return 1; // temp
		case 10: // Restrooms
			return sRestrooms;
	}
}