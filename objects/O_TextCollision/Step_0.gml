Get_Controls()

global.KeepPlayerFrozenBetweenBoxes = FreezePlayer
if !instance_exists(O_Textbox)
{
	if NeedInput
	{
		if CanTriggerAgain = true
		{
			if place_meeting(x, y, O_Player) && KeySelectPressed
			{
				if FreezePlayer {global.FreezePlayer = 1}
				Create_Textbox(TextID)
			}
		}
		else
		{
			if place_meeting(x, y, O_Player) && KeySelectPressed && Triggered = false
			{
				if FreezePlayer {global.FreezePlayer = 1}
				Create_Textbox(TextID)
				Triggered = true
			}
		}
	}
	else
	{
		if CanTriggerAgain = true
		{
			if place_meeting(x, y, O_Player) && !instance_exists(O_Textbox) && !global.FreezePlayer
			{
				if FreezePlayer {global.FreezePlayer = 1}
				Create_Textbox(TextID)
			}
		}
		else
		{
			if place_meeting(x, y, O_Player) && !instance_exists(O_Textbox) && Triggered = false && !global.FreezePlayer
			{
				if FreezePlayer {global.FreezePlayer = 1}
				Create_Textbox(TextID)
				Triggered = true
			}
		}
	}
}
if keyboard_check(vk_f4) {visible = 1} else {visible = 0}