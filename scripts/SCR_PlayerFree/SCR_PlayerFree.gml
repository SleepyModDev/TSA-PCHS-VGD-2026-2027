function Scr_PlayerFree()
{
	//get H and V movement
	HMove = (MoveSpd*(KeyRightHeld-KeyLeftHeld));
	VMove = (MoveSpd*(KeyDownHeld-KeyUpHeld));
	
	//horizontal move
	if place_meeting(x+HMove, y, O_WallCollision)
	{
		do x=x+sign(HMove); until place_meeting(x+sign(HMove), y, O_WallCollision)
	}
	else
	{
		x=x+HMove;
	}
	//vertical move
	if(place_meeting(x, y+VMove, O_WallCollision))
	{
		do y=y+sign(VMove); until place_meeting(x, y+sign(VMove), O_WallCollision)
	}
	else
	{
		y=y+VMove;
	}
	
}