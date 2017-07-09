/// @description Spawn
switch(m_State) {
	case GAME.TUTORIAL_DWARF:
		if(!instance_exists(obj_Barrel)) {
			var _barrel = instance_create_layer(m_Lane[1], 0, "Instances", obj_Barrel);
			_barrel.m_Occupant = instance_create_layer(_barrel.x, _barrel.y, "Instances_FG", obj_Dwarf);
			var _text = instance_create_layer(m_Lane[1], 0, "Instances", obj_TextFloater);
			_text.m_Text = "Pick up\nthese guys!";
			m_State = GAME.TUTORIAL_ORC;
		}
		alarm[0] = 1;
		break;
	case GAME.TUTORIAL_ORC:
		if(!instance_exists(obj_Barrel)) {
			var _barrel = instance_create_layer(m_Lane[2], 0, "Instances", obj_Barrel);
			_barrel.m_Occupant = instance_create_layer(_barrel.x, _barrel.y, "Instances_FG", obj_Orc);
			var _text = instance_create_layer(m_Lane[2], 0, "Instances", obj_TextFloater);
			_text.m_Text = "Leave these\nguys!";
			m_State = GAME.TUTORIAL_ROCK;
		}
		alarm[0] = 1;
		break;
	case GAME.TUTORIAL_ROCK:
		if(!instance_exists(obj_Barrel)) {
			var _text = instance_create_layer(m_Lane[0], 0, "Instances", obj_TextFloater);
			_text.m_Text = "Avoid";
			_text = instance_create_layer(m_Lane[3], 0, "Instances", obj_TextFloater);
			_text.m_Text = "these!";
			instance_create_layer(m_Lane[0], 0, "Instances", obj_Rock);
			instance_create_layer(m_Lane[3], 0, "Instances", obj_LittleRock);
			m_State = GAME.LEVEL1;
		}
		alarm[0] = 1;
		break;
	case GAME.LEVEL1:
		
		break;
	case GAME.LEVEL2:
		
		break;
	case GAME.LEVEL3:
		
		break;
	case GAME.LEVEL4:
		
		break;
}

