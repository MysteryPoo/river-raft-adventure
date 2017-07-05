/// @description Animation
m_Tick += 10;
if(m_Tick >= 360)
	m_Tick = 0;
m_yOffset = 5 * dsin(m_Tick);
