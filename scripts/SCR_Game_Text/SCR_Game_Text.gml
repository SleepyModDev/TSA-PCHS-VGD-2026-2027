/// @param TextID
function Game_Text(_TextID)
{
	switch(_TextID)
	{
		//error message
		case "" :
			Text_SCR("No Text Has Been Added For This Trigger Yet!")
				Text_Color(0,43,c_white,c_white,c_red,c_red)
				Text_Shake(0,43,1)
			break;
	}
}