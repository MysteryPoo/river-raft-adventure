/// @description Properties
m_TargetX = x;
m_Rafters = [instance_create_layer(x, y, "Instances_FG", obj_Rafter),
				instance_create_layer(x, y, "Instances_FG", obj_Rafter),
				instance_create_layer(x, y, "Instances_FG", obj_Rafter),
				instance_create_layer(x, y, "Instances_FG", obj_Rafter)]
m_Rafters[0].sprite_index = spr_GrayRafter;
m_Rafters[1].sprite_index = spr_OrangeRafter;
m_Rafters[2].sprite_index = spr_BlackRafter;
m_Rafters[3].sprite_index = spr_BrownRafter;
m_Radius = sqrt(15*15 + 15*15);
m_State = RAFTER.IDLE;
m_Occupant = noone;
