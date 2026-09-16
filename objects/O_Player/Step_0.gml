Get_Controls() // get controls

if instance_exists(O_Textbox) or instance_exists(O_Warp) {global.FreezePlayer = true} else {global.FreezePlayer = false}

if !global.FreezePlayer {Player_Free()} // player state (add state machine later if needed)