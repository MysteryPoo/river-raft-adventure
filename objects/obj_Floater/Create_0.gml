/// @description Properties
if(instance_exists(obj_Controller)) vspeed = global.currentFlow;
else vspeed = 2;
alarm[0] = 1;
m_WaterTile_Front = instance_create_layer(x, y, "Instances_FG", obj_WaterTile);
m_WaterTile_Back = instance_create_layer(x, y, "Instances_BG", obj_WaterTile);
m_WaterTile_Back.image_angle = 180;
