function Player_Free()
{
	//get H and V movement
	HMove = (MoveSpd*(KeyRightHeld-KeyLeftHeld));
	VMove = (MoveSpd*(KeyDownHeld-KeyUpHeld));
	
	//get previous x and y before moving
	PrevX = x;
	MovedX = 0;
	PrevY = y;
	MovedY = 0;
	
	if KeyUpHeld {FaceDir = 1}
	if KeyRightHeld {FaceDir = 2}
	if KeyLeftHeld {FaceDir = 3}
	if KeyRightHeld {FaceDir = 0}
	
	//horizontal movement
	if !place_meeting(x+HMove, y, O_WallCollision)
	{
		x=x+HMove;
	}
	else
	{
		do x=x+sign(HMove); until place_meeting(x, y, O_WallCollision)
		x=x-sign(HMove)
	}
	
	//vertical movement
	if !place_meeting(x, y+VMove, O_WallCollision)
	{
		y=y+VMove;
	}
	else
	{
		do y=y+sign(VMove); until place_meeting(x, y, O_WallCollision)
		y=y-sign(VMove)
	}
}