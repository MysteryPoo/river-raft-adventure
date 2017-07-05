/// @description Score
draw_set_font(fnt_Hobbiton_Small);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(0, 40, "Score: " + string(m_Score));
draw_text(32, 128, "x" + string(m_Lives));
draw_set_color(c_yellow);
draw_text(2, 44, "Score: " + string(m_Score));
draw_text(34, 132, "x" + string(m_Lives));
draw_sprite_stretched(spr_Raft, 0, 0, 64, 32, 64);
