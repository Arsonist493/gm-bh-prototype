if (paused == true && shop_open == false) 
{
if (paused == true){
	draw_set_font(fnt_pse);
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	var xx = 
	display_get_gui_width() / 2;
	var yy =
	display_get_gui_height() / 2;
	draw_set_color(c_red);
	draw_rectangle(xx - 100,yy - 50, xx + 100,yy + 50,false);
	draw_set_color(c_white);
	draw_text(xx,yy,"PAUSED");
	}
}	
draw_set_font(fnt_menu);
draw_set_color(c_red);
draw_set_halign(fa_center);

var _cw = display_get_gui_width();
var _ch = display_get_gui_height();
if(stage < 4){
	draw_text(_cw / 2, 20, "STAGE:" + string(stage));
	if(show_stage_clear == true){
		var _cw = display_get_gui_width();
		var _ch = display_get_gui_height();
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_red);
		draw_text(_cw / 2 ,_ch / 2,"STAGE CLEAR!");
	}
}
draw_set_color(c_yellow);
draw_set_font(-1);

draw_text(50, 220, "GOLD:" + string(global.gold));

draw_set_color(c_aqua);
draw_set_font(-1);

draw_text(50, 245, "LEVEL:" + string(global.level));

draw_set_color(c_gray);
draw_rectangle(20, 70, 220, 85, false);

draw_set_color(c_orange);
var fullness = (global.xp / global.max_xp) * 200;
draw_rectangle(20, 70,20 + fullness, 85 , false);
draw_set_color(c_white);
if (instance_exists(obj_chr))
{

if (instance_exists(obj_chr))
{
   
    if (obj_chr.has_shield_ability == true)
    {
      
        var cx = display_get_gui_width() / 2;
        var cy = display_get_gui_height();
        
        var bar_w = 120; 
        var bx = cx - (bar_w / 2); 
		var by = cy - 40; 
		var bar_h = 16; 
        
       
        if (obj_chr.shield_active == true)
        {
            var rate = obj_chr.shield_timer / 180;
            
            draw_set_color(c_dkgray);
            draw_rectangle(bx, by, bx + bar_w, by + bar_h, false);
            
            draw_set_color(c_aqua);
            draw_rectangle(bx, by, bx + (bar_w * rate), by + bar_h, false); 
        }
        else if (obj_chr.shield_cooldown > 0)
        {
            var rate = 1 - (obj_chr.shield_cooldown / obj_chr.max_shield_cooldown);
            
            draw_set_color(c_dkgray);
            draw_rectangle(bx, by, bx + bar_w, by + bar_h, false); 
            
            draw_set_color(c_red);
            draw_rectangle(bx, by, bx + (bar_w * rate), by + bar_h, false); 
        }
        
        else
        {
            draw_set_color(c_dkgray);
            draw_rectangle(bx, by, bx + bar_w, by + bar_h, false); 
            
            draw_set_color(c_lime);
            draw_rectangle(bx, by, bx + bar_w, by + bar_h, false); 
        }
        
        
        draw_set_color(c_white); 
		}
	}
}
if (show_potential == true)
{
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();
    
    draw_set_color(c_red);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    draw_text_transformed(gui_w / 2, gui_h / 2 - 100, "- POTENTIAL UNLOCKED -", 2, 2, 0);
    
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}


if (shop_open == true)
{
    var cx = display_get_gui_width() / 2;
    var cy = display_get_gui_height() / 2;
	var liste_x = cx - 200;
	draw_set_color(c_black);
    draw_set_alpha(0.85);
    draw_rectangle(cx - 250, cy - 150, cx + 250, cy + 150, false);
	
	draw_set_color(c_yellow);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_text_transformed(cx, cy - 110, "- WEAPON SHOP -", 2, 2, 0);
    
	draw_set_color(c_white);
    draw_text(cx, cy - 70, "Your Gold: " + string(global.gold));
    
	draw_set_halign(fa_left);

		if (instance_exists(obj_chr))
		{
			if (obj_chr.has_shield_ability == true)
			{
				draw_set_color(c_gray);
				draw_text(liste_x, cy - 20, "[1] SHIELD ABILITY (OWNED)");
		    }
			else
			{
				draw_set_color(c_white);
				draw_text(liste_x, cy - 20, "[1] UNLOCK SHIELD (Press 1)");
				draw_set_color(c_lime);
				draw_text(liste_x + 300, cy - 20, "300 G");
			}
		}
		if(obj_chr.has_parry_ability == true){
			draw_set_color(c_gray);
			draw_text(liste_x, cy + 20, "[2] PARRY ABILITY (OWNED)");
		}
		else
		{
			draw_set_color(c_white);
			draw_text(liste_x, cy + 20, "[2] UNLOCK PARRY (Press 2)");
			draw_set_color(c_lime);
			draw_text(liste_x + 300, cy + 20, string(cost_parry) + " G");
		}
				
				
			draw_set_color(c_red);
			draw_set_halign(fa_center);
			draw_text(cx, cy + 110, "Press 'B' to Close");
	
			draw_set_color(c_white);
			draw_set_halign(fa_left);
			draw_set_alpha(1);
}
if(show_potential == true){
	var gui_w = display_get_gui_width();
	var gui_h = display_get_gui_height();
	
	draw_set_color(c_yellow);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}	
if (level_up_menu == true)
{
    var cx = display_get_gui_width() / 2;
    var cy = display_get_gui_height() / 2;

    draw_set_color(c_black);
    draw_set_alpha(0.85);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);

    draw_set_halign(fa_center);
    draw_set_color(c_yellow);
    draw_text_transformed(cx, cy - 80, "LEVEL UP!", 2, 2, 0);

    draw_set_color(c_white);
    draw_text(cx, cy - 20, "Choose your upgrade path:");

    draw_set_color(c_lime);
    draw_text(cx, cy + 30, "[1] HOMING MISSILES (Tracks enemies, but less damage)");

    draw_set_color(c_orange);
    draw_text(cx, cy + 70, "[2] SPREAD SHOT (Diagonal angles, more bullets)");

	draw_set_color(c_aqua);
    draw_text(cx, cy + 110, "[3] CLASSIC BLASTER (Straight shots, nothing changes)");
    
	draw_set_halign(fa_left);
    draw_set_color(c_white);
}



