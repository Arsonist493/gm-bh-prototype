draw_set_font(fnt_menu);
draw_set_halign(fa_center); 
var _gap = 40;
for (var i = 0;i < array_length(menu_text); i++)
{
	if (i == index)
		draw_set_color(c_yellow); 
	else draw_set_color(c_white);
		draw_text(room_width / 2, (room_height / 2) + (i * _gap), menu_text[i]);
	}