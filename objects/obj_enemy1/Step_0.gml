y = lerp(y, target_y, 0.02);
t += 0.02;
x = start_x + sin(t) * 500;
x = clamp(x, 32, room_width - 32);
if (y > room_height + 50) {
    instance_destroy();
}
if (hp <= 0) {
    instance_destroy();
}