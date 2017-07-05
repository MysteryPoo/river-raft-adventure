/// @description Drag
alarm[0] = room_speed * .33;
if(hspeed != 0) hspeed -= sign(hspeed);
if(vspeed < 2) vspeed += 1;
