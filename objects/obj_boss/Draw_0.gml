draw_self();

if (state == 2)
{
    var w = room_width;
    var h = room_height;

    if (attack_step == 1)
    {
        draw_set_color(c_red);
        draw_set_alpha(0.4); 
    }
    else if (attack_step == 2) 
    {
        draw_set_color(c_white);
        draw_set_alpha(0.8);
    }

    if (attack_step == 1 || attack_step == 2)
    {
        if (cleave_count == 0) 
        {
            draw_triangle(0, 0, w, 0, 0, h, false);
            draw_triangle(w, 0, w * 0.35, h, 0, h, false);
        }
        else if (cleave_count == 1) 
        {
            draw_triangle(w, 0, 0, 0, w, h, false);
            draw_triangle(0, 0, w * 0.65, h, w, h, false);
        }

        draw_set_alpha(1); 
    }
}
if(state == 3){
	var w = room_width;
    var h = room_height;

    if (attack_step == 1) 
    {
        draw_set_color(c_red);
        draw_set_alpha(0.4); 
    }
    else if (attack_step == 2)
    {
        draw_set_color(c_white);
        draw_set_alpha(0.8);
    }

    if (attack_step == 1 || attack_step == 2)
    {
	    draw_rectangle(w * 0.25, 0, w * 0.42, h, false); 
        draw_rectangle(w * 0.58, 0, w * 0.75, h, false); 
        
        draw_set_alpha(1);
    }
}
if (state == 4)
{
    var w = room_width;
    var h = room_height;

    if (attack_step == 1)
    {
        draw_set_color(c_red);
        draw_set_alpha(0.4); 
    }
    else if (attack_step == 2) 
    {
        draw_set_color(c_white);
        draw_set_alpha(0.8);
    }

    if (attack_step == 1 || attack_step == 2)
    {
        var beam_thickness = 300; 
        var offset = w * 0.35; 
        var bw = w - offset;
		var ext = 2;
        draw_line_width(0, 0, bw * ext, h * ext, beam_thickness);          
        
        draw_line_width(w, 0, w +((offset - w) * ext) , h * ext, beam_thickness);          
        
        draw_set_alpha(1);
    }
}
if (state == 5)
{
	var w = room_width;
    var h = room_height;

    if (attack_step == 1) 
    {
        draw_set_color(c_red);
        draw_set_alpha(0.4); 
    }
    else if (attack_step == 2)
    {
        draw_set_color(c_white);
        draw_set_alpha(0.8);
    }

    if (attack_step == 1 || attack_step == 2)
    {
	    draw_rectangle(w * 0.25, 0, w * 0.42, h, false); 
        draw_rectangle(w * 0.58, 0, w * 0.75, h, false); 
        
        draw_set_alpha(1);
    }
}

if (state == 6)
{
    var w = room_width;
    var h = room_height;
    var beam_thickness = 300; 

    if (attack_step == 1) 
    {
        draw_set_color(c_red);
        draw_set_alpha(0.4); 
    }
    else if (attack_step == 2) 
    {
        draw_set_color(c_white);
        draw_set_alpha(0.8);
    }

    if (attack_step == 1 || attack_step == 2)
    {
      
        draw_line_width(w / 2, 0, w / 2, h, beam_thickness);          
        
        draw_set_alpha(1); 
    }
}