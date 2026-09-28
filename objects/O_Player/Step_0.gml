Get_Controls() // get controls

if instance_exists(O_Textbox) or instance_exists(O_Warp) {global.FreezePlayer = true} else {global.FreezePlayer = false}

if !global.FreezePlayer {Player_Free()} // player state (add state machine later if needed)

//check if moved (used for animation control)
	if PrevX != x && !global.FreezePlayer {MovedX = true}
	if PrevY != y && !global.FreezePlayer {MovedY = true}
	
	if !MovedX && !MovedY
	{
		sprite_index = S_Player_Idle
		image_speed = 0
		image_index = FaceDir
	}
	
	if MovedY && !global.FreezePlayer
	{
		if PrevY > y {sprite_index = S_Player_Walk_U; FaceDir = 1}
		if PrevY < y {sprite_index = S_Player_Walk_D; FaceDir = 3}
		image_speed = 1
	}
	if MovedX && !global.FreezePlayer
	{
		if PrevX > x {sprite_index = S_Player_Walk_L; FaceDir = 2}
		if PrevX < x {sprite_index = S_Player_Walk_R; FaceDir = 0}
		image_speed = 1
	}