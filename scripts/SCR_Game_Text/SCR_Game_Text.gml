/// @param TextID
function Game_Text(_TextID)
{
	switch(_TextID)
	{
		#region error/test message
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
			Text_SCR("* This is a test textbox for testing purposes.")
			Text_SCR("If you are reading this you have reached the second textbox where we test color, shake, and float.")
				Text_Color(74,78,c_yellow,c_yellow,c_white,c_white)
				Text_Shake(81,85,1)
				Text_Float(92,96,10)
			break;
		case "Test 2" :
			Text_SCR("* This is a test textbox for testing purposes.")
			Text_SCR("If you are reading this you have gone to the second room for the first time, this textbox should not appear again.")
				array_set(global.SeenTextArray,0,true) //sets a text as seen for text that should only be triggered once
			break;
		case "Test 3" :
			Text_SCR("* This is a test textbox for testing purposes.")
			Text_SCR("If you are reading this you are approaching a save collision, press Z to trigger it while over the save tile. this textbox should not appear again.")
				array_set(global.SeenTextArray,1,true)
		break;
		
		case "Test Puzzle 1" :
			if !array_get(global.ClearedTestPuzzlesArray,0)
			{
				Text_SCR("This puzzle was unsolved, but is now. use the save spot to save this progress between resets")
				array_set(global.ClearedTestPuzzlesArray,0,true)
			}
			else
			{
				Text_SCR("This puzzle has already been solved.")
			}
		break;
		case "Test Puzzle 2" :
			if !array_get(global.ClearedTestPuzzlesArray,1)
			{
				Text_SCR("This puzzle was unsolved, but is now. use the save spot to save this progress between resets")
				array_set(global.ClearedTestPuzzlesArray,1,true)
			}
			else
			{
				Text_SCR("This puzzle has already been solved.")
			}
		break;
		case "Test Puzzle 3" :
			if !array_get(global.ClearedTestPuzzlesArray,2)
			{
				Text_SCR("This puzzle was unsolved, but is now. use the save spot to save this progress between resets")
				array_set(global.ClearedTestPuzzlesArray,2,true)
			}
			else
			{
				Text_SCR("This puzzle has already been solved.")
			}
		break;
		case "Test Puzzle 4" :
			if !array_get(global.ClearedTestPuzzlesArray,3)
			{
				Text_SCR("This puzzle was unsolved, but is now. use the save spot to save this progress between resets")
				array_set(global.ClearedTestPuzzlesArray,3,true)
			}
			else
			{
				Text_SCR("This puzzle has already been solved.")
			}
		break;
		case "Test Puzzle 5" :
			if !array_get(global.ClearedTestPuzzlesArray,4)
			{
				Text_SCR("This puzzle was unsolved, but is now. use the save spot to save this progress between resets")
				array_set(global.ClearedTestPuzzlesArray,4,true)
			}
			else
			{
				Text_SCR("This puzzle has already been solved.")
			}
		break;
		case "Puzzle Test Win" :
			Text_SCR("Puzzle Completed :)")
		
		#endregion error/test message
	}
}