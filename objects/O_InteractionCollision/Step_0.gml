Get_Controls()

if NeedInput
{
	if place_meeting(x, y, O_Player) && KeySelectPressed && !instance_exists(O_Textbox)// && global.Paused == 1
	{
		Create_Textbox(TextID)
	}
}
else
{
	if CanTriggerAgain = true
	{
		if place_meeting(x, y, O_Player) && !instance_exists(O_Textbox)// && global.Paused == 1
		{
			Create_Textbox(TextID)
		}
	}
	else
	{
		if place_meeting(x, y, O_Player) && !instance_exists(O_Textbox) && Triggered = false// && global.Paused == 1
		{
			Create_Textbox(TextID)
			Triggered = true
		}
	}
}
if keyboard_check(vk_f4) {visible = 1} else {visible = 0}