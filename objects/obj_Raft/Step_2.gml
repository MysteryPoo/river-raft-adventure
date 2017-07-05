/// @description Anchor rafters
var _tarX = [];
var _tarY = [];

var _idleX =	[x - m_Radius * dsin(image_angle + 45),
				x - m_Radius * dsin(image_angle - 45),
				x - m_Radius * dsin(image_angle + 135),
				x - m_Radius * dsin(image_angle - 135)];
var _idleY =	[y - m_Radius * dcos(image_angle + 45),
				y - m_Radius * dcos(image_angle - 45),
				y - m_Radius * dcos(image_angle + 135),
				y - m_Radius * dcos(image_angle - 135)];

switch(m_State) {
	case RAFTER.CAPTURE:
		if(instance_exists(m_Occupant)) {
			for(var _i = 0; _i < 4; ++_i) {
				_tarX[_i] = m_Occupant.x;
				_tarY[_i] = m_Occupant.y;
				var _x = m_Rafters[_i].x;
				var _y = m_Rafters[_i].y;
				m_Rafters[_i].direction = point_direction(_x, _y, _tarX[_i], _tarY[_i]);
				var _dist = point_distance(_x, _y, _tarX[_i], _tarY[_i]);
				m_Rafters[_i].speed = min(5, point_distance(_x, _y, _tarX[_i], _tarY[_i]));
				if(_dist > 5) m_Rafters[_i].speed = 5;
				else m_State = RAFTER.RETREAT;
			}
		}
		break;
	case RAFTER.RETREAT:
		for(var _i = 0; _i < 4; ++_i) {
			_tarX[_i] = _idleX[_i];
			_tarY[_i] = _idleY[_i];
			var _x = m_Rafters[_i].x;
			var _y = m_Rafters[_i].y;
			m_Rafters[_i].direction = point_direction(_x, _y, _tarX[_i], _tarY[_i]);
			var _dist = point_distance(_x, _y, _tarX[_i], _tarY[_i]);
			if(_dist > 5) m_Rafters[_i].speed = 5;
			else m_State = RAFTER.IDLE;
		}
		break;
	default:
		for(var _i = 0; _i < 4; ++_i) {
			m_Rafters[_i].x = _idleX[_i];
			m_Rafters[_i].y = _idleY[_i];
		}
}

if(instance_exists(m_Occupant)) {
	var _dist = point_distance(m_Occupant.x, m_Occupant.y, x, y);
	if(_dist > 5) {
		m_Occupant.direction = point_direction(m_Occupant.x, m_Occupant.y, x, y);
		m_Occupant.speed = 5;
	} else {
		instance_destroy(m_Occupant);
		m_Occupant = noone;
	}
}
