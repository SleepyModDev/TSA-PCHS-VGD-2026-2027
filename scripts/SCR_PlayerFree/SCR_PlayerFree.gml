function SCR_PlayerFree()
{
	//get H and V movement
	HMove = (MoveSpd*(KeyRightHeld-KeyLeftHeld));
	VMove = (MoveSpd*(KeyDownHeld-KeyUpHeld));
	
	//horizontal move
	if !place_meeting(x+HMove, y, O_WallCollision)
	{
		x=x+HMove;
	}
	else
	{
		do x=x+sign(HMove); until place_meeting(x, y, O_WallCollision)
		x=x-sign(HMove)
	}
	
	//vertical move
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