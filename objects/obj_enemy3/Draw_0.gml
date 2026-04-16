if (state == 0)
{

    var portal_scale = portal_radius / max_portal_radius;

    draw_sprite_ext(spr_portal, 0, x, y, portal_scale, portal_scale, portal_radius * 5, c_white, image_alpha);
}
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);