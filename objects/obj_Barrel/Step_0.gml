/// @description Animation State Machine
m_BobTick += 10;
m_SwayTick += 5;
if(m_BobTick >= 360) m_BobTick = 0;
if(m_SwayTick >= 360) m_SwayTick = 0;
m_Angle = 15 * dsin(m_SwayTick);
m_yOffset = 5 * dsin(m_BobTick);

// Create occupant
if(distance_to_object(obj_Raft) < 256) {
	if(m_Occupant == noone && !m_Captured) {
		m_Occupant = instance_create_layer(x, y, "Instances_FG", choose(obj_Dwarf, obj_Orc));
	}
	if(instance_exists(m_Occupant)) m_Occupant.visible = true;
} else {
	if(instance_exists(m_Occupant)) m_Occupant.visible = false;
}

// Boundary
if(x < 64) hspeed = 2;
if(x > room_width - 64) hspeed = -2;
