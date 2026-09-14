
switch(State)
{
	case States.Out :
	if SubImg < IMax + XMax + YMax {SubImg+=SubImgIncrement}
	else
	{
		with O_Player
			{
			room_goto(RoomGoTo);
			x = XGoTo
			y = YGoTo
		}
		Delayed++
		if Delayed >= Delay
		{
			State = States.In
			SubImg = IMax + XMax + YMax
		}
	}
	break;
	
	case States.In :
	if SubImg > 0 {SubImg-=SubImgIncrement}
	else
	{
		instance_destroy(self)
		global.FreezePlayer = 0
	}
	break;
}