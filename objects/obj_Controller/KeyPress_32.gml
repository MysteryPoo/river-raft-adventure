/// @description Delete event
if(m_Paused) {
	m_Paused = false;
	obj_Floater.vspeed = 2;
} else {
	m_Paused = true;
	obj_Floater.vspeed = 0;
}
