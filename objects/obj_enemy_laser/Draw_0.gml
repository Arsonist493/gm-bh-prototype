draw_self();
if(state == "indicator"){
	draw_set_alpha(0.4);
	draw_set_color(c_red);
	draw_line_width(x, y, x, room_height, 2);
	draw_set_alpha(1);
}
else if(state == "fire"){
	draw_set_color(c_orange);
	draw_line_width(x, y, x, room_height, 25);
	
	draw_set_color(c_white);
	draw_line_width(x, y, x,room_height, 10);
}