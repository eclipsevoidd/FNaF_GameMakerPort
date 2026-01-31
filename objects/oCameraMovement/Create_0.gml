x = 640;
start_x = 640;
target_x = 960;

pixel_speed = 60; // pixels per second
wait_duration = 100 / 60; // 100 frames

state = 0; // 0 = Move Out, 1 = Wait, 2 = Move Back, 3 = Wait
timer = 0;

function approach(current, target, amount) {
    if (current < target) {
        return min(current + amount, target);
    } else {
        return max(current - amount, target);
    }
}