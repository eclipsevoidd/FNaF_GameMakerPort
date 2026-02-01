var _dt = delta_time / 1000000;
elapsed += _dt;

alpha = clamp(elapsed / duration, 0, 1);

if (elapsed >= duration) {
    if (room != targetRoom && targetRoom != noone) {
        room_goto(targetRoom);
    } else {
        instance_destroy();
    }
}