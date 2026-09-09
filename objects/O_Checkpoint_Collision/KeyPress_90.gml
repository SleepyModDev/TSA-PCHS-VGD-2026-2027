if instance_exists(O_Player)
{
	with O_Player
	if place_meeting(x, y, O_Checkpoint_Collision)
	{
		global.RespawnRoom = room;
		global.RespawnX = x;
		global.RespawnY = y;
	}
}