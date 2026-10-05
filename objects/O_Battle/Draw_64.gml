#region Enemy Animation
	
	switch EnemyCount
	{
		case 1 :
		switch EnemyState1
		{
			//idle
				case EnemyStates.Idle :
					draw_sprite_ext(S_TEMPENEMYSPRITES,1,480,240,2,2,0,c_white,1)
					for (var i = 4; i > -1; --i) 
					{
					    draw_sprite_ext(S_TEMPENEMYSPRITES,i,480+(sin(current_time/800))*(4/(i+1)),240+(sin(current_time/400))*(1/(i+1)),2,2,0,c_white,1)
					}
				break;
			//Attack
				case EnemyStates.Attack :
					draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,0,480-(sin(current_time/800))*4,240+(sin(current_time/400))*2,2,2,0,c_white,1)
					draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,4,480,240,2,2,0,c_white,1)
					for (var i = 3; i > 0; --i) 
					{
					    draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,i,480-(sin(current_time/800))*(4/(i+1)),240+(sin(current_time/400))*(1/(i+1)),2,2,0,c_white,1)
					}
					draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,5,480-(sin(current_time/800))*1,240-(64*1)+(sin(current_time/400))*1,2,2,current_time/40,c_white,1)
				break;
		}
		break;
		
		case 2 :
		switch EnemyState1
		{
		//idle
		case EnemyStates.Idle :
			draw_sprite_ext(S_TEMPENEMYSPRITES,2,240,240,2,2,0,c_red,1)
			for (var i = 3; i > -1; --i) 
				{
				    draw_sprite_ext(S_TEMPENEMYSPRITES,i,240-(sin(current_time/800))*(1/(i+1)),240+(sin(current_time/400))*1,2,2,0,c_red,1)
				}
			break;
		
		//attack
		case EnemyStates.Attack :
				draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,0,320-(sin(current_time/800))*1,440+(sin(current_time/400))*1,2,2,0,c_red,1)
				draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,1,320,240,2,2,0,c_red,1)
				for (var i = 3; i > 0; --i) 
				{
				    draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,i,320-(sin(current_time/800))*(1/(i+1)),240+(sin(current_time/400))*1,2,2,0,c_red,1)
				}
			break;
			}
		switch EnemyState2
		{
		//idle
		case EnemyStates.Idle :
			draw_sprite_ext(S_TEMPENEMYSPRITES,1,640,240,1,1,0,c_blue,1)
			for (var i = 3; i > -1; --i) 
				{
				    draw_sprite_ext(S_TEMPENEMYSPRITES,i,640+(sin(current_time/800))*(4/(i+1)),240+(sin(current_time/400))*1,4,4,0,c_blue,1)
				}
		break;
	
		//attack
		case EnemyStates.Attack :
			draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,0,640-(sin(current_time/800))*4,240+(sin(current_time/400))*1,2,2,0,c_blue,1)
			draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,1,640,240,1,1,0,c_blue,1)
			for (var i = 3; i > 0; --i) 
			{
			    draw_sprite_ext(S_TEMPENEMYSPRITESATTACK,i,640+(sin(current_time/800))*(4/(i+1)),240+(sin(current_time/400))*1,2,2,0,c_blue,1)
			}
		break;
		}
	}
#endregion Enemy Animation