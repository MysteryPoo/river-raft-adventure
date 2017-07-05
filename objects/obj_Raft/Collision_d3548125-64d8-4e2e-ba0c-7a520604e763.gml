/// @description Hit an occupant
if(instance_exists(other.m_Occupant)) {
	m_Occupant = other.m_Occupant;
	other.m_Occupant = noone;
	other.m_Captured = true;
	other.sprite_index = spr_EmptyBarrel;
	m_State = RAFTER.CAPTURE;
	if(m_Occupant.object_index == obj_Dwarf) obj_Controller.m_Score += 100;
	else obj_Controller.m_Score -= 50;
}
if(other.x < x) other.hspeed = -3;
else other.hspeed = 3;
other.vspeed = -2;
