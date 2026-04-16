draw_set_color(c_black);
draw_rectangle(20, 20, 220, 40 ,false);
draw_set_color(c_red);
draw_rectangle(20, 20, 20 + (hp / 100) * 200, 40, false);
var gui_x = 60;
var gui_y = display_get_gui_height()	 - 60;
var radius = 30;
if (alarm[2] <=0)
{
	draw_set_color(c_lime);
	draw_set_alpha(0.8);
	draw_circle(gui_x, gui_y, radius, false);
	
}
else{
	draw_set_color(c_red);
	draw_set_alpha(0.5);
	draw_circle(gui_x, gui_y, radius, false);
	
	draw_set_color(c_white);
	draw_set_alpha(0.4);
	
	var shrinking_radius = radius * (alarm[2] / max_cd);
	
	draw_circle(gui_x, gui_y, shrinking_radius, false);
}
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);