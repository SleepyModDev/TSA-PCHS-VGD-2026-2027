/// @param TextID
function Game_Text(_TextID)
{
	switch(_TextID)
	{
		//error message
		case "" :
			Text_SCR("Error Detected: No Text Has Been Added For This Trigger Yet!", "ERROR")
				Text_Color(0,69,c_red,c_red,c_red,c_red)
			break;
	}
}