draw_set_color(c_white);
draw_sprite_ext(spr_ewings, wing_frame, x, y, 0.8, 0.8, 0, c_white, 1);

var squish_y = 0.6 - (sin(squish_timer) * 0.05);
draw_sprite_ext(spr_enemy2, 0, x, y, 0.7, squish_y, target_angle, c_white, 1);

if (state == "indicator")
{
    draw_set_alpha(0.5);
    draw_set_color(c_red);
    draw_line_width(x, y, lx, ly, 2);
    draw_set_alpha(1);
}
else if (state == "fire")
{
    draw_set_color(c_yellow);
    draw_line_width(x, y, lx, ly, 20);
    
    draw_set_color(c_white);
    draw_line_width(x, y, lx, ly, 8);
}

