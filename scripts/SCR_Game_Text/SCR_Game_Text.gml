/// @param TextID
function Game_Text(_TextID)
{
	switch(_TextID)
	{
		//error message
		case "" :
			Text_SCR("No Text Has Been Added For This Trigger Yet!", "ERROR")
				Text_Color(0,43,c_red,c_red,c_red,c_red)
				Text_Shake(0,43,.5)
			break;
	}
}