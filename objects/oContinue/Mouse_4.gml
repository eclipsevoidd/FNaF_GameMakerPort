if (instance_exists(oMenuFreddy)) {
    if (time_source_exists(oMenuFreddy.twitchTimer)) {
        time_source_destroy(oMenuFreddy.twitchTimer);
    }
    if (time_source_exists(oMenuFreddy.opacTimer)) {
        time_source_destroy(oMenuFreddy.opacTimer);
    }
    instance_destroy(oMenuFreddy); 
}

if (instance_exists(oStatic)) {
    instance_destroy(oStatic);
}

if (instance_exists(oNewspaper)) {
    instance_destroy(oNewspaper);
}

audio_stop_sound(mus_darkness_music);
audio_stop_sound(snd_static);
room_goto(rm_NightLoad);