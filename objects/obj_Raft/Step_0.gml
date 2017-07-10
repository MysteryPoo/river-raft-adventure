/// @description Move toward target position
if(x < m_TargetX) {
	if(abs(m_TargetX - x) > 10) {
		hspeed = 5;
		image_angle = -45;
	} else if(abs(m_TargetX - x) > 5) {
		hspeed = 5;
		image_angle = -25;
	} else if(abs(m_TargetX - x) > 1) {
		hspeed = 1;
		image_angle = -15;
	}
} else if(x > m_TargetX) {
	if(abs(m_TargetX - x) > 10) {
		hspeed = -5;
		image_angle = 45;
	} else if(abs(m_TargetX - x) > 5) {
		hspeed = -5;
		image_angle = 25;
	} else if(abs(m_TargetX - x) > 1) {
		hspeed = -1;
		image_angle = 15;
	}
} else {
	image_angle = 0;
	hspeed = 0;
}

// Boundary
if(x < 64) x = 64;
if(x > room_width - 64) x = room_width - 64;
