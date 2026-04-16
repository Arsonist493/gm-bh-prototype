if (state >= 1)
{
    var gui_w = display_get_gui_width(); 
    
    var bar_width = gui_w * 0.5;         
    var bar_x = (gui_w - bar_width) / 2; 
    var bar_y = 35;                      
    var bar_height = 10;                 

 
    var hp_percent = hp / max_hp;
    if (hp_percent < 0) hp_percent = 0;

    draw_set_color(c_dkgray);
    draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

    draw_set_color(c_red);
    draw_rectangle(bar_x, bar_y, bar_x + (bar_width * hp_percent), bar_y + bar_height, false);

    draw_set_color(c_white);
    draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, true);

    draw_set_color(c_white);
    draw_set_halign(fa_center); 
    draw_set_valign(fa_bottom);
    
    draw_text(gui_w / 2, bar_y - 5, "THE HOLY KNIGHT"); 
    
    draw_set_halign(fa_left); 
    draw_set_valign(fa_top);
}