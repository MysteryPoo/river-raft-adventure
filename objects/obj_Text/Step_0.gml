/// @description Fall
if(m_Falling) {
	if(m_yOffset > 0) {
		m_yOffset -= 2;
	} else {
		draw_set_font(fnt_Hobbiton_Large);
		instance_create_layer(x, y, "Instances", obj_Splash);
		var _t = instance_create_layer(x, y, "Instances", obj_TextFloater);
		_t.m_Text = m_Text;
		_t.m_Font = m_Font;
		_t.m_Score = m_Score;
		instance_destroy();
	}
}
