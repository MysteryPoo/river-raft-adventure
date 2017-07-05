/// @description Draw
draw_set_font(fnt_Hobbiton_Large);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x, y, "Press to start");
draw_set_color(c_lime);
draw_text(x + 2, y + 2, "Press to start");
if(m_Flash) draw_text_transformed(x, y, "Press to start", 1 + dsin(m_Tick), 1 + dsin(m_Tick), 0);
