/// @param FollowedObject
function Camera_Follow(_FollowedObject=O_Player)
{
		//set terget
		TargetX = _FollowedObject.x - ViewWidthHalf;
		TargetY = _FollowedObject.y - ViewHeightHalf;
	
		//clamp to room
		TargetX = clamp(TargetX, 0, room_width - camera_get_view_width(view_camera[0]));
		TargetY = clamp(TargetY, 0, room_height - camera_get_view_height(view_camera[0]));
		
		//set pos
		x = TargetX;
		y = TargetY;
}