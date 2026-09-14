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
		case "Test 1" :
			Text_SCR("This is a test textbox for testing purposes.")
			Text_SCR("If you are reading this you have reached the second textbox where we test color, shake, and float.")
				Text_Color(74,78,c_yellow,c_yellow,c_white,c_white)
				Text_Shake(81,85,1)
				Text_Float(92,96,10)
	}
}