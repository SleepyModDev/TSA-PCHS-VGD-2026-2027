#region Enemy Animation

switch EnemyCount
{
	case 1 :
		draw_sprite_ext(S_TEMPENEMYSPRITES,4,960,480,4,4,0,c_white,1)
		draw_sprite_ext(S_TEMPENEMYSPRITES,3,960+(sin(current_time/800))*2,480+(sin(current_time/400))*2,4,4,0,c_white,1)
		draw_sprite_ext(S_TEMPENEMYSPRITES,2,960+(sin(current_time/800))*4,480+(sin(current_time/400))*4,4,4,0,c_white,1)
		draw_sprite_ext(S_TEMPENEMYSPRITES,1,960+(sin(current_time/800))*6,480+(sin(current_time/400))*6,4,4,0,c_white,1)
		draw_sprite_ext(S_TEMPENEMYSPRITES,0,960+(sin(current_time/800))*8,480+(sin(current_time/400))*8,4,4,0,c_white,1)
	break;
	case 2 :
		draw_sprite_ext(S_TEMPENEMYSPRITES,4,640,480,4,4,0,c_red,1)
		draw_sprite_ext(S_TEMPENEMYSPRITES,3,640,480,4,4,0,c_red,1)
		draw_sprite_ext(S_TEMPENEMYSPRITES,2,640,480,4,4,0,c_red,1)
		draw_sprite_ext(S_TEMPENEMYSPRITES,1,640,480,4,4,0,c_red,1)
		draw_sprite_ext(S_TEMPENEMYSPRITES,0,640,480,4,4,0,c_red,1)

		draw_sprite_ext(S_TEMPENEMYSPRITES,4,1280,480,4,4,0,c_blue,1)
		draw_sprite_ext(S_TEMPENEMYSPRITES,3,1280,480,4,4,0,c_blue,1)
		draw_sprite_ext(S_TEMPENEMYSPRITES,2,1280,480,4,4,0,c_blue,1)
		draw_sprite_ext(S_TEMPENEMYSPRITES,1,1280,480,4,4,0,c_blue,1)
		draw_sprite_ext(S_TEMPENEMYSPRITES,0,1280,480,4,4,0,c_blue,1)
	break;
}

#endregion Enemy Animation