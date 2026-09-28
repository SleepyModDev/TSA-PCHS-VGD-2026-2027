#region Enemy Animation
	
	switch EnemyCount
	{
		case 1 :
		switch EnemyState1
		{
			//idle
				case EnemyStates.Idle :
					draw_sprite_ext(S_TEMPENEMYSPRITES,4,960,480,4,4,0,c_white,1)
					for (var i = 3; i > -1; --i) 
					{
					    draw_sprite_ext(S_TEMPENEMYSPRITES,i,960+(sin(current_time/800))*(8/(i+1)),480+(sin(current_time/400))*2,4,4,0,c_white,1)
					}
				break;
			//Attack
				case EnemyStates.Attack :
					draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,0,960-(sin(current_time/800))*8,480+(sin(current_time/400))*2,4,4,0,c_white,1)
					draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,4,960,480,4,4,0,c_white,1)
					for (var i = 3; i > 0; --i) 
					{
					    draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,i,960-(sin(current_time/800))*(8/(i+1)),480+(sin(current_time/400))*2,4,4,0,c_white,1)
					}
				break;
		}
		break;
		
		case 2 :
		switch EnemyState1
		{
		//idle
		case EnemyStates.Idle :
			draw_sprite_ext(S_TEMPENEMYSPRITES,4,640,480,4,4,0,c_red,1)
			for (var i = 3; i > -1; --i) 
				{
				    draw_sprite_ext(S_TEMPENEMYSPRITES,i,640-(sin(current_time/800))*(8/(i+1)),480+(sin(current_time/400))*2,4,4,0,c_red,1)
				}
			break;
		
		//attack
		case EnemyStates.Attack :
				draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,0,640-(sin(current_time/800))*8,480+(sin(current_time/400))*2,4,4,0,c_red,1)
				draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,4,640,480,4,4,0,c_red,1)
				for (var i = 3; i > 0; --i) 
				{
				    draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,i,640-(sin(current_time/800))*(8/(i+1)),480+(sin(current_time/400))*2,4,4,0,c_red,1)
				}
			break;
			}
		switch EnemyState2
		{
		//idle
		case EnemyStates.Idle :
			draw_sprite_ext(S_TEMPENEMYSPRITES,4,1280,480,4,4,0,c_blue,1)
			for (var i = 3; i > -1; --i) 
				{
				    draw_sprite_ext(S_TEMPENEMYSPRITES,i,1280+(sin(current_time/800))*(8/(i+1)),480+(sin(current_time/400))*2,4,4,0,c_blue,1)
				}
		break;
	
		//attack
		case EnemyStates.Attack :
			draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,0,1280-(sin(current_time/800))*8,480+(sin(current_time/400))*2,4,4,0,c_blue,1)
			draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,4,1280,480,4,4,0,c_blue,1)
			for (var i = 3; i > 0; --i) 
			{
			    draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,i,1280+(sin(current_time/800))*(8/(i+1)),480+(sin(current_time/400))*2,4,4,0,c_blue,1)
			}
		break;
		}
	}
#endregion Enemy Animation