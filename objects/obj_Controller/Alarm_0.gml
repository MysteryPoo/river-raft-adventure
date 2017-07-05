/// @description Spawn
alarm[0] = irandom_range(room_speed * 2, room_speed * 4);

var _rand = irandom(100);
if(_rand > 80)
	instance_create_layer(irandom_range(100, room_width - 100), 0, "Instances", obj_Barrel);
else if(_rand > 50)
	instance_create_layer(irandom_range(100, room_width - 100), 0, "Instances", obj_Rock);
else
	instance_create_layer(irandom_range(100, room_width - 100), 0, "Instances", obj_LittleRock);
