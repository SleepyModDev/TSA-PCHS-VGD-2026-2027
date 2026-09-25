function SCR_CheckPipe(){
	var pipes = [];
var pipelitslolidonno = layer_get_all_elements("Pipes");
for(var i = 0; i<array_length(pipelitslolidonno); i++)
{
	if (layer_get_element_type(pipelitslolidonno[i]) == layerelementtype_instance) {
        array_push(pipes, layer_instance_get_instance(pipelitslolidonno[i]));
    }
}
var pipetype;
function checkNext(NextPD, pArray, ArrayID)
{
	var DirectionX = 0;
	var DirectionY = 0;
	if(NextPD==0)
	{
		DirectionX = 64;
	}
	if(NextPD==1)
	{
		DirectionY = -64;
	}
	if(NextPD==2)
	{
		DirectionX = -64;
	}
	if(NextPD==3)
	{
		DirectionY = 64;
	}
	{
	var allowMove = false;
	if(DirectionX!=0)
		{
		if(x + DirectionX == pArray.x && y == pArray.y)
		{
			if(ArrayID.object_index == O_PipeEnd)
			{
				show_debug_message("win");
				if room = RM_Test2 {array_set(global.ClearedTestPuzzlesArray, 0, true)}
				Create_Textbox("Puzzle Test Win")
				instance_destroy(O_PipeChecker);
			}
			//straight does not need positive or negative check
			if(ArrayID.object_index == O_PipeSegmentStraight)
				{
					if(pArray.RotationDir == 0 || pArray.RotationDir == 2)
					{
						allowMove = true;
						var newChecker = instance_create_layer(x+DirectionX, y, "Instances", O_PipeChecker);
						newChecker.pipeDirection = NextPD;
						instance_destroy();
					}
				}
			if(DirectionX > 0)
			{
				if(ArrayID.object_index == O_PipeSegmentCurved)
				{
					if(pArray.RotationDir == 1)
					{
						allowMove = true;
						var newChecker = instance_create_layer(x+64, y, "Instances", O_PipeChecker);
						newChecker.pipeDirection = 1;
						instance_destroy();
					}
					if(pArray.RotationDir == 2)
					{
						allowMove = true;
						var newChecker = instance_create_layer(x+64, y, "Instances", O_PipeChecker);
						newChecker.pipeDirection = 3;
						instance_destroy();
					}
				}
				if(ArrayID.object_index == O_PipeSegmentThreeWay)
				{
					if(pArray.RotationDir == 0)
					{
						allowMove = true;
						var newCheckerA = instance_create_layer(x+64, y, "Instances", O_PipeChecker);
						var newCheckerB = instance_create_layer(x+64, y, "Instances", O_PipeChecker);
						newCheckerA.pipeDirection = 0;
						newCheckerB.pipeDirection = 3;
						instance_destroy();
					}
					if(pArray.RotationDir == 2)
					{
						allowMove = true;
						var newCheckerA = instance_create_layer(x+64, y, "Instances", O_PipeChecker);
						var newCheckerB = instance_create_layer(x+64, y, "Instances", O_PipeChecker);
						newCheckerA.pipeDirection = 0;
						newCheckerB.pipeDirection = 1;
						instance_destroy();
					}
					if(pArray.RotationDir == 1)
					{
						allowMove = true;
						var newCheckerA = instance_create_layer(x+64, y, "Instances", O_PipeChecker);
						var newCheckerB = instance_create_layer(x+64, y, "Instances", O_PipeChecker);
						newCheckerA.pipeDirection = 1;
						newCheckerB.pipeDirection = 3;
						instance_destroy();
					}
				}
			}else
			{
				if(ArrayID.object_index == O_PipeSegmentCurved)
				{
					if(pArray.RotationDir == 0)
					{
						allowMove = true;
						var newChecker = instance_create_layer(x-64, y, "Instances", O_PipeChecker);
						newChecker.pipeDirection = 1;
						instance_destroy();
					}
					if(pArray.RotationDir == 3)
					{
						allowMove = true;
						var newChecker = instance_create_layer(x-64, y, "Instances", O_PipeChecker);
						newChecker.pipeDirection = 3;
						instance_destroy();
					}
				}
				if(ArrayID.object_index == O_PipeSegmentThreeWay)
				{
					if(pArray.RotationDir == 0)
					{
						allowMove = true;
						var newCheckerA = instance_create_layer(x-64, y, "Instances", O_PipeChecker);
						var newCheckerB = instance_create_layer(x-64, y, "Instances", O_PipeChecker);
						newCheckerA.pipeDirection = 2;
						newCheckerB.pipeDirection = 3;
						instance_destroy();
					}
					if(pArray.RotationDir == 3)
					{
						allowMove = true;
						var newCheckerA = instance_create_layer(x-64, y, "Instances", O_PipeChecker);
						var newCheckerB = instance_create_layer(x-64, y, "Instances", O_PipeChecker);
						newCheckerA.pipeDirection = 1;
						newCheckerB.pipeDirection = 3;
						instance_destroy();
					}
					if(pArray.RotationDir == 2)
					{
						allowMove = true;
						var newCheckerA = instance_create_layer(x-64, y, "Instances", O_PipeChecker);
						var newCheckerB = instance_create_layer(x-64, y, "Instances", O_PipeChecker);
						newCheckerA.pipeDirection = 2;
						newCheckerB.pipeDirection = 1;
						instance_destroy();
					}
				}
			}
		}
		}
		if(DirectionY!=0)
		{
		if(y + DirectionY == pArray.y && x == pArray.x)
		{
			///---------WIN-------------///
			if(ArrayID.object_index == O_PipeEnd)
			{
				show_debug_message("win");
				if room = RM_Test2 {array_set(global.ClearedTestPuzzlesArray, 0, true)}
				Create_Textbox("Puzzle Test Win")
				instance_destroy(O_PipeChecker);
			}
			if(ArrayID.object_index == O_PipeSegmentStraight)
				{
					if(pArray.RotationDir == 1 || pArray.RotationDir == 3)
					{
						allowMove = true;
						var newChecker = instance_create_layer(x, y+DirectionY, "Instances", O_PipeChecker);
						newChecker.pipeDirection = NextPD;
						instance_destroy();
					}
				}
			if(DirectionY > 0)
			{
				if(ArrayID.object_index == O_PipeSegmentCurved)
				{
					if(pArray.RotationDir == 0)
					{
						allowMove = true;
						var newChecker = instance_create_layer(x, y+64, "Instances", O_PipeChecker);
						newChecker.pipeDirection = 0;
						instance_destroy();
					}
					if(pArray.RotationDir == 1)
					{
						allowMove = true;
						var newChecker = instance_create_layer(x, y+64, "Instances", O_PipeChecker);
						newChecker.pipeDirection = 2;
						instance_destroy();
					}
				}
				if(ArrayID.object_index == O_PipeSegmentThreeWay)
				{
					if(pArray.RotationDir == 1)
					{
						allowMove = true;
						var newCheckerA = instance_create_layer(x, y+64, "Instances", O_PipeChecker);
						var newCheckerB = instance_create_layer(x, y+64, "Instances", O_PipeChecker);
						newCheckerA.pipeDirection = 2;
						newCheckerB.pipeDirection = 3;
						instance_destroy();
					}
					if(pArray.RotationDir == 3)
					{
						allowMove = true;
						var newCheckerA = instance_create_layer(x, y+64, "Instances", O_PipeChecker);
						var newCheckerB = instance_create_layer(x, y+64, "Instances", O_PipeChecker);
						newCheckerA.pipeDirection = 0;
						newCheckerB.pipeDirection = 3;
						instance_destroy();
					}
					if(pArray.RotationDir == 2)
					{
						allowMove = true;
						var newCheckerA = instance_create_layer(x, y+64, "Instances", O_PipeChecker);
						var newCheckerB = instance_create_layer(x, y+64, "Instances", O_PipeChecker);
						newCheckerA.pipeDirection = 0;
						newCheckerB.pipeDirection = 2;
						instance_destroy();
					}
				}
			}else
			{
				if(ArrayID.object_index == O_PipeSegmentCurved)
				{
					if(pArray.RotationDir == 2)
					{
						allowMove = true;
						var newChecker = instance_create_layer(x, y-64, "Instances", O_PipeChecker);
						newChecker.pipeDirection = 2;
						instance_destroy();
					}
					if(pArray.RotationDir == 3)
					{
						allowMove = true;
						var newChecker = instance_create_layer(x, y-64, "Instances", O_PipeChecker);
						newChecker.pipeDirection = 0;
						instance_destroy();
					}
				}
				if(ArrayID.object_index == O_PipeSegmentThreeWay)
				{
					if(pArray.RotationDir == 0)
					{
						allowMove = true;
						var newCheckerA = instance_create_layer(x, y-64, "Instances", O_PipeChecker);
						var newCheckerB = instance_create_layer(x, y-64, "Instances", O_PipeChecker);
						newCheckerA.pipeDirection = 0;
						newCheckerB.pipeDirection = 2;
						instance_destroy();
					}
					if(pArray.RotationDir == 1)
					{
						allowMove = true;
						var newCheckerA = instance_create_layer(x, y-64, "Instances", O_PipeChecker);
						var newCheckerB = instance_create_layer(x, y-64, "Instances", O_PipeChecker);
						newCheckerA.pipeDirection = 2;
						newCheckerB.pipeDirection = 1;
						instance_destroy();
					}
					if(pArray.RotationDir == 3)
					{
						allowMove = true;
						var newCheckerA = instance_create_layer(x, y-64, "Instances", O_PipeChecker);
						var newCheckerB = instance_create_layer(x, y-64, "Instances", O_PipeChecker);
						newCheckerA.pipeDirection = 1;
						newCheckerB.pipeDirection = 0;
						instance_destroy();
					}
				}
			}
		}
		}
		if(!allowMove){
			
				//show_debug_message("fail");
				instance_destroy();
		}
	}
}
for(var i = 0; i< array_length(pipes);i++)
{
	
	checkNext(pipeDirection, pipes[i], pipes[i]);
	
}


}