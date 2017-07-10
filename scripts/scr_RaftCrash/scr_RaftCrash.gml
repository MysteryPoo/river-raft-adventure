/// @description Crash
for(var _i = 0; _i < 4; ++_i) {
	m_Rafters[_i].alarm[0] = room_speed * 0.5;
	m_Rafters[_i].direction = irandom_range(45, 135);
	m_Rafters[_i].speed = 5;
}
repeat(obj_Controller.m_Score) {
	var _dwarf = instance_create_layer(x, y, "Instances", obj_Rafter);
	_dwarf.sprite_index = spr_DwarfHead;
	_dwarf.alarm[0] = room_speed * 0.5;
	_dwarf.direction = irandom_range(45, 135);
	_dwarf.speed = 5;
}
instance_create_layer(x, y, "Instances", obj_RaftFloat);
if(obj_Controller.m_Score > obj_Controller.m_MaxScore) obj_Controller.m_MaxScore = obj_Controller.m_Score;
obj_Controller.m_Score = 0;
obj_Controller.m_Lives -= 1;
obj_Controller.m_State = GAME.LEVEL1;
instance_destroy();
