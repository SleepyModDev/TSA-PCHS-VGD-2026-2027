/// @param TextID
function Game_Text(_TextID)
{
	switch(_TextID)
	{
		//error message
		case "" :
			Text_SCR("-Error Detected: No Text Has Been Added For This Trigger Yet! For testing purposes you will be promted with 2 choices.", "ERROR")
				Text_Color(0,120,c_red,c_red,c_red,c_red)
				Option_SCR("Option A 1", "TEST1")
				Option_SCR("Option B 2", "TEST2")
			break;
		case "TEST1" :
			Text_SCR("-Option A 1 Chosen.")
			break;
		case "TEST2" :
			Text_SCR("-Option B 2 Chosen.")
			break;
	}
}