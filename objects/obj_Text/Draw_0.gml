/// @description Draw
draw_set_font(m_Font);
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y + 25, m_Text);
draw_set_alpha(1);
draw_text(x, y + 25 - m_yOffset, m_Text);
draw_set_color(m_Score ? c_red : c_yellow);
draw_text(x + 2, y + 25 - m_yOffset + 2, m_Text);
