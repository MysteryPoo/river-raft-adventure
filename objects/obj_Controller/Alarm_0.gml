/// @description State Machine
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
		alarm[0] = room_speed * 2;
		scr_SetCurrentFlow(2);
		var _slot = ds_list_create();
		ds_list_add(_slot, 0, 1, 2, 3);
		ds_list_shuffle(_slot);
		if(m_Obstacle) {
			instance_create_layer(m_Lane[_slot[|0]], 0, "Instances", choose(obj_Rock, obj_LittleRock));
			m_Obstacle = false;
		} else {
			var _barrel = instance_create_layer(m_Lane[_slot[|0]], 0, "Instances", obj_Barrel);
			_barrel.m_Occupant = instance_create_layer(_barrel.x, _barrel.y, "Instances_FG", obj_Dwarf);
			_barrel = instance_create_layer(m_Lane[_slot[|1]], 0, "Instances", obj_Barrel);
			_barrel.m_Occupant = instance_create_layer(_barrel.x, _barrel.y, "Instances_FG", obj_Orc);
			m_Obstacle = true;
		}
		ds_list_destroy(_slot);
		if(m_Score >= 5) {
			m_State = GAME.LEVEL2;
		}
		break;
	case GAME.LEVEL2:
		alarm[0] = room_speed * 2;
		scr_SetCurrentFlow(4);
		var _slot = ds_list_create();
		ds_list_add(_slot, 0, 1, 2, 3);
		ds_list_shuffle(_slot);
		if(m_Obstacle) {
			instance_create_layer(m_Lane[_slot[|0]], 0, "Instances", choose(obj_Rock, obj_LittleRock));
			instance_create_layer(m_Lane[_slot[|1]], 0, "Instances", choose(obj_Rock, obj_LittleRock));
			m_Obstacle = false;
		} else {
			var _barrel = instance_create_layer(m_Lane[_slot[|0]], 0, "Instances", obj_Barrel);
			_barrel.m_Occupant = instance_create_layer(_barrel.x, _barrel.y, "Instances_FG", obj_Dwarf);
			_barrel = instance_create_layer(m_Lane[_slot[|1]], 0, "Instances", obj_Barrel);
			_barrel.m_Occupant = instance_create_layer(_barrel.x, _barrel.y, "Instances_FG", obj_Orc);
			m_Obstacle = true;
		}
		ds_list_destroy(_slot);
		if(m_Score >= 20) {
			m_State = GAME.LEVEL3;
		}
		break;
	case GAME.LEVEL3:
		alarm[0] = room_speed * 1.5;
		scr_SetCurrentFlow(6);
		var _slot = ds_list_create();
		ds_list_add(_slot, 0, 1, 2, 3);
		ds_list_shuffle(_slot);
		if(m_Obstacle) {
			instance_create_layer(m_Lane[_slot[|0]], 0, "Instances", choose(obj_Rock, obj_LittleRock));
			instance_create_layer(m_Lane[_slot[|1]], 0, "Instances", choose(obj_Rock, obj_LittleRock));
			instance_create_layer(m_Lane[_slot[|2]], 0, "Instances", choose(obj_Rock, obj_LittleRock));
			m_Obstacle = false;
		} else {
			var _barrel = instance_create_layer(m_Lane[_slot[|0]], 0, "Instances", obj_Barrel);
			_barrel.m_Occupant = instance_create_layer(_barrel.x, _barrel.y, "Instances_FG", obj_Dwarf);
			_barrel = instance_create_layer(m_Lane[_slot[|1]], 0, "Instances", obj_Barrel);
			_barrel.m_Occupant = instance_create_layer(_barrel.x, _barrel.y, "Instances_FG", obj_Orc);
			_barrel = instance_create_layer(m_Lane[_slot[|2]], 0, "Instances", obj_Barrel);
			_barrel.m_Occupant = instance_create_layer(_barrel.x, _barrel.y, "Instances_FG", obj_Orc);
			m_Obstacle = true;
		}
		ds_list_destroy(_slot);
		if(m_Score >= 40) {
			m_State = GAME.LEVEL4;
		}
		break;
	case GAME.LEVEL4:
		alarm[0] = room_speed * 1.3;
		scr_SetCurrentFlow(6);
		var _slot = ds_list_create();
		ds_list_add(_slot, 0, 1, 2, 3);
		ds_list_shuffle(_slot);
		if(m_Obstacle) {
			instance_create_layer(m_Lane[_slot[|0]], 0, "Instances", choose(obj_Rock, obj_LittleRock));
			instance_create_layer(m_Lane[_slot[|1]], 0, "Instances", choose(obj_Rock, obj_LittleRock));
			instance_create_layer(m_Lane[_slot[|2]], 0, "Instances", choose(obj_Rock, obj_LittleRock));
			m_Obstacle = false;
		} else {
			var _barrel = instance_create_layer(m_Lane[_slot[|0]], 0, "Instances", obj_Barrel);
			_barrel.m_Occupant = instance_create_layer(_barrel.x, _barrel.y, "Instances_FG", obj_Dwarf);
			_barrel = instance_create_layer(m_Lane[_slot[|1]], 0, "Instances", obj_Barrel);
			_barrel.m_Occupant = instance_create_layer(_barrel.x, _barrel.y, "Instances_FG", obj_Orc);
			_barrel = instance_create_layer(m_Lane[_slot[|2]], 0, "Instances", obj_Barrel);
			_barrel.m_Occupant = instance_create_layer(_barrel.x, _barrel.y, "Instances_FG", obj_Orc);
			_barrel = instance_create_layer(m_Lane[_slot[|3]], 0, "Instances", obj_Barrel);
			_barrel.m_Occupant = instance_create_layer(_barrel.x, _barrel.y, "Instances_FG", obj_Orc);
			m_Obstacle = true;
		}
		ds_list_destroy(_slot);
		if(m_Score >= 40) {
			m_State = GAME.LEVEL4;
		}
		break;
}

