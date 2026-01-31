var dt = delta_time / 1000000;

switch (state) {
    case 0: // move to 960
        x = approach(x, 960, pixel_speed * dt);
        if (x == 960) state = 1;
    break;

    case 1: // wait 1.67s
        timer += dt;
        if (timer >= wait_duration) {
            timer = 0;
            state = 2;
        }
    break;

    case 2: // move back to 640
        x = approach(x, start_x, pixel_speed * dt);
        if (x == start_x) state = 3;
    break;

    case 3: // wait 1.67s again
        timer += dt;
        if (timer >= wait_duration) {
            timer = 0;
            state = 0; // reset
        }
    break;
}