/// @description Check for swimmers
if(!instance_exists(obj_Rafter) && m_HTTP == -1) {
	if(m_Lives > 0)	instance_create_layer(288, 704, "Instances", obj_Raft);
	else {
		var _name = get_string("What's your name?", "");
		m_HTTP = http_get("https://mattandheidiswedding.party/newhs/name/" + _name + "/score/" + string(m_Score));
	}
}

// Check for window resize
if (browser_width != width || browser_height != height) {
	width = min(base_width, browser_width);
	height = min(base_height, browser_height);
	scr_Resize(base_width, base_height, width, height, false);
}
