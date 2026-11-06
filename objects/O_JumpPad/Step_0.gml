image_angle = dir;
var player = instance_find(O_PlayerOverworld , 0);
if(place_meeting(x,y, O_PlayerOverworld)){
	global.FreezePlayer = true;
	SCR_Jump(dir);
}
