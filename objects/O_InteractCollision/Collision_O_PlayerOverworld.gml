Get_Controls()

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