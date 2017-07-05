/// @description Anchor objects together
event_inherited();
if(instance_exists(m_Occupant)) {
	m_Occupant.x = x + 20 * dcos(m_Angle + 90);
	m_Occupant.y = y - 20 * dsin(m_Angle + 90);
}
