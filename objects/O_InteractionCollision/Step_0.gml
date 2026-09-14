Get_Controls()

if place_meeting(x, y, O_Player) && KeySelectPressed && !instance_exists(O_Textbox)// && global.Paused == 1
{
	Create_Textbox(TextID)
}

if keyboard_check(vk_f4) {visible = 1} else {visible = 0}