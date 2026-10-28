if keyboard_check(vk_f4) {visible = 1} else {visible = 0}

if room == RM_Elevator01
{
	TargetRoom = global.Elevator01CurrentFloorRM
	TargetX = global.Elevator01CurrentFloorX
	TargetY = global.Elevator01CurrentFloorY
}