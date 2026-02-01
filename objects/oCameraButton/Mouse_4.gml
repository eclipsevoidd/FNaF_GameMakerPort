if (instance_exists(oBlipFlash)) {
    instance_destroy(oBlipFlash);
}

var camBlip = instance_create_depth(0, 0, -1000, oBlipFlash);
camBlip.image_index = 0;

global.currentCam = myID;
oCamLocation.image_index = myID;

with(oBlipFlash) {
    image_index = 0;
}

