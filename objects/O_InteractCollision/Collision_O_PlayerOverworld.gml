Get_Controls()

if NeedsInput
{
if NeedFacing
{
	if !global.FreezePlayer && KeySelectPressed && O_PlayerOverworld.FaceDir = NeededFace
	{
		switch InteractType
		{
			case "Button" :
				switch ButtonID
				{
					case "Maintenence Door" :
					if array_get(global.SeenTextArray,0)
					{
						array_set(global.OpenedDoorsArray,0,1)
						instance_destroy(inst_7B926456)
						instance_destroy(inst_748CD346)
					}
					else
					{
						Create_Textbox("Maintenence Door Locked")
					}
					break;
				}
			break;
		}
	}
}
else
{
	if !global.FreezePlayer && KeySelectPressed
	{
		switch InteractType
		{
			case "Button" :
				switch ButtonID
				{
					case "Maintenence Door" :
					if array_get(global.SeenTextArray,0)
					{
						array_set(global.OpenedDoorsArray,0,1)
						instance_destroy(inst_7B926456)
						instance_destroy(inst_748CD346)
					}
					else
					{
						Create_Textbox("Maintenence Door Locked")
					}
					break;
				}
			break;
		}
	}
}
}
else
{
		switch InteractType
		{
			case "Trigger" :
				switch TriggerID
				{
					case "To Habitation Power Outage" :
						if !array_get(global.TriggeredTriggersArray,0)
						{
							audio_play_sound(SND_PowerOut,9,0,1,0,1)
							instance_create_depth(0,0,0,O_LightOutFader)
							Create_Textbox("To Habitation Lights Out")
							array_set(global.TriggeredTriggersArray,0,1)
						}
					
					
					break;
				}
				break;
		}
}