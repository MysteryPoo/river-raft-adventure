/// @description Sets the flow rate of the river current
/// @arg0 rate
global.currentFlow = argument0;
layer_vspeed("Embankment", argument0);
layer_vspeed("Embankment_1", argument0);
layer_vspeed("Background", argument0);
with(obj_Floater) vspeed = argument0;
