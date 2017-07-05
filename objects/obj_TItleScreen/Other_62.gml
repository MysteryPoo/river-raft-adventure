/// @description Process high scores
var scores;
var _temp = async_load;
if (ds_map_find_value(async_load, "id") == m_Get) {
	if (ds_map_find_value(async_load, "status") == 0) {
		var _result = ds_map_find_value(async_load, "result");
		scores = json_decode(_result);
	} else {
		scores = -1;
	}
}

if(scores != -1) {
	var array = scores[?"default"];
	var size = ds_list_size(array);
	for(var _i = 0; _i < size; ++_i) {
		var _obj = instance_create_layer(room_width * 0.5, 300 + _i * 40, "Instances", obj_Text);
		var _score = array[|_i];
		_obj.m_Text = _score[?"name"] + ":   " + _score[?"score"];
		_obj.m_Score = true;
		_obj.m_Font = fnt_Hobbiton_Small;
	}
	ds_map_destroy(scores);
}
