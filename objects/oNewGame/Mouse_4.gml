if (instance_exists(oMenuFreddy)) {
    if (time_source_exists(oMenuFreddy.twitchTimer)) {
        time_source_destroy(oMenuFreddy.twitchTimer);
    }
    if (time_source_exists(oMenuFreddy.opacTimer)) {
        time_source_destroy(oMenuFreddy.opacTimer);
    }
    instance_destroy(oMenuFreddy); 
}

if (instance_exists(oNewspaper)) {
    instance_destroy(oNewspaper);
}

var newspaperInstance = instance_create_depth(0, 0, -2, oNewspaper, {
	image_alpha: 0});

newspaperInstance.persistent = true;

room_goto(rm_Newspaper);