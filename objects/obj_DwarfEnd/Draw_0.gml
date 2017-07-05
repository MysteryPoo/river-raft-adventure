/// @description Draw
for(var _i = -256; _i < 256; ++_i) {
	if(_i mod 8 == 0) effect_create_below(ef_smokeup, x + _i, y, 16, choose(c_gray, c_black, c_dkgray));
}
draw_set_color(c_black);
draw_rectangle(x - 512, y - 32, x + 512, y + 32, false);
draw_self();

draw_set_font(fnt_Hobbiton_Large);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_aqua);
draw_text(40, 40, "Thank you \nfor saving us!");
