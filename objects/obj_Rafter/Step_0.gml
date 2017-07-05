/// @description Tick
m_Tick -= 10;
m_yOffset = 5 * dcos(m_Tick);
if(m_Tick <= 0) {
	m_Tick = 0;
	m_yOffset = 0;
}