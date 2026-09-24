Get_Controls();
if place_meeting(x,y,O_Player)
	{
		if KeySelectPressed
		{
		var newChecker = instance_create_layer(x, y, "Instances", O_PipeChecker);
		newChecker.pipeDirection = 0;
		}
	}