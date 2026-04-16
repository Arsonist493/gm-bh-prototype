if (x == other.x && y == other.y)
{
    x += choose(-1, 1);
}

var push_dir = point_direction(other.x, other.y, x, y);
var push_force = 1; 

x += lengthdir_x(push_force, push_dir);
y += lengthdir_y(push_force, push_dir);

x = clamp(x, 40, room_width - 40);