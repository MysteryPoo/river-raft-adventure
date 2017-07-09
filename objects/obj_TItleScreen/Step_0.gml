/// @description Next level
if(!instance_exists(obj_Text) && !instance_exists(obj_TextFloater)) room_goto(rm_Game);

// Check for window resize
if (browser_width != width || browser_height != height) {
	width = min(base_width, browser_width);
	height = min(base_height, browser_height);
	scr_Resize(base_width, base_height, width, height, false);
}
