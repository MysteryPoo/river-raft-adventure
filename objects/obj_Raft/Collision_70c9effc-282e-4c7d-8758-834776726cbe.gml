/// @description Crash
for(var _i = 0; _i < 4; ++_i) {
	m_Rafters[_i].alarm[0] = room_speed * 0.5;
	m_Rafters[_i].direction = irandom_range(45, 135);
	m_Rafters[_i].speed = 5;
}
instance_create_layer(x, y, "Instances", obj_RaftFloat);
obj_Controller.m_Lives -= 1;
instance_destroy();
