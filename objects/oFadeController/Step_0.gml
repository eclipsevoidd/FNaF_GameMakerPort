var dt = delta_time / 1000000; 

switch(room) {
    case rm_WarningScreen:
        var input_pressed = (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_anykey));
        
        if (!started_transition) {
            timer_delay += dt;
        }

        // Trigger after 2 seconds OR on input
        if ((input_pressed || timer_delay >= 2.0) && !started_transition) {
            started_transition = true;
            
            var _fade = instance_create_depth(0, 0, -9999, oFade);
            _fade.duration = 1.06; // The fade itself lasts 1.06s
            _fade.targetRoom = rm_MainMenu;
            
            texture_prefetch(sStatic);
        }
    break;
}