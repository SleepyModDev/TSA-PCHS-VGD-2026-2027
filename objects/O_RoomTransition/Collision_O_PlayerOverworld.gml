if !Collided
{
	O_PlayerOverworld.RoomGoTo = TargetRoom;
	O_PlayerOverworld.XGoTo = TargetX
	O_PlayerOverworld.YGoTo = TargetY
	instance_create_depth(x,y,0,O_Warp)
}
Collided = 1