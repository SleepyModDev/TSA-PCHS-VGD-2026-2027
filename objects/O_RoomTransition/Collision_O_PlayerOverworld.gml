if !Collided
{
	O_Player.RoomGoTo = TargetRoom;
	O_Player.XGoTo = TargetX
	O_Player.YGoTo = TargetY
	instance_create_depth(x,y,0,O_Warp)
}
Collided = 1