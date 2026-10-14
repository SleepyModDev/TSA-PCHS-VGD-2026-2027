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
			break;
		case "Jude Test" :
			Text_SCR("My Name Is Jude and I am the player character.", "Jude",1)
			Text_Color(11,14,c_purple,c_purple,c_purple,c_purple)
			Option_SCR("Coolio.", "JUDE TEST1")
			Option_SCR("Okay.", "JUDE TEST2")
		break;
		case "JUDE TEST1" :
			Text_SCR("Coolio.", "Jude",1)
		break;
		case "JUDE TEST2" :
			Text_SCR("Okay.", "Jude",2)
		break;
		
		#endregion error/test message
		
		#region Region 1 Dialouge
		
		case "Maintenence Door Locked" :
			Text_SCR("You push the button...")
			Text_SCR("The door seems to be locked.")
			break;
		case "Terminal Maintenence Habitation" :
		if !array_get(global.SeenTextArray,0)
		{
			Text_SCR("Alert: Severe plasma storms across the surface have caused 18 failures across 6 sectors within the Theta Facility.","Terminal Green")
			Text_SCR("Repairs are needed in the following sectors: Habitation, Production, Storage, Agriculture, Power, Computation.","Terminal Green")
			Text_SCR("Error: Unable to open maintenence tunnel routes, tunnel exits will need to be manually activated from within the sectors","Terminal Green")
			Text_SCR("Emergency door into Habitation remains accessible, unlocking door now...","Terminal Green")
			array_set(global.OpenedDoorsArray,0,1)
			Text_SCR("Door Unlocked. Warning: Habitation light failure. Habitation door locks failure. Habitation security failure","Terminal Green")
			Text_SCR("Habitation failures must be resolved before proceeding to other sectors in need of repair. Good luck, Name Not In Database.","Terminal Green")
			array_set(global.SeenTextArray,0,1)
			
		}
		else
		{
			var _FailuresLeft = 0
			for (var i = 0; i < 3; ++i) 
			{
			    if !array_get(global.ClearedPuzzlesArea1Array,i) {_FailuresLeft++}
			}
			Text_SCR(string_concat("Habitation sector failures remaining: ",string(_FailuresLeft)),"Terminal Green")
		}
			break;
			
		case "To Habitation Lights Out" :
			Text_SCR("! The lights went out...")
			Text_SCR("Until the lights are restored you'll have to rely on the limited light from your headlamp to make repairs.")
			break;
		
		case "Door Locked" :
			Text_SCR("You push the button...")
			Text_SCR("The button is not recieving power, and thus the door cannot open.")
			break;
			
		case "Habitation Locked Door NPC 1" :
			if !array_get(global.SeenTextArray,1)
			{
				Text_SCR("You knock hard on the door. You hear a voice from the other side call out.")
				Text_SCR("H- Hello? Who's there!")
					Option_SCR("Maintenence","HabNPC1 Dialouge Option 1")
					Option_SCR("Jude","HabNPC1 Dialouge Option 2")
			}
			else
			{
				if !global.IntroducedJudeToHabNPC1 {Text_SCR("Please be quick.")}
				else {Text_SCR("Please be quick Jude.")}
				
			}
			break;
			
		case "HabNPC1 Dialouge Option 1" :
			Text_SCR("Maintenence, I'm here to fix the failures caused by the plasma storms on the surface.", "Jude")
			Text_SCR("Please be quick, I hate being in the dark! I keep hearing something scuttering about in here and it's freaking me out!")
			Text_SCR("I think there's levers in here to control the doors, but some of them arent recieving power.")
			Text_SCR("If you can restore the power, I think I could open this door and the one into the other sectors, but for now only the north doors lever works, I'll open it now.")
			array_set(global.OpenedDoorsArray,1,1)
			global.IntroducedJudeToHabNPC1 = 0
			array_set(global.SeenTextArray,1,1)
			break;
			
		case "HabNPC1 Dialouge Option 2" :
			Text_SCR("Jude, I'm here to fix the failures caused by the plasma storms on the surface.", "Jude Smile")
			Text_SCR("Please be quick Jude, I hate being in the dark! I keep hearing something scuttering about in here and it's freaking me out!")
			Text_SCR("The lights will be back on in no time, I promise.", "Jude")
			Text_SCR("I think there's buttons in here to unlock the doors, but some of them arent recieving power.")
			Text_SCR("If you can restore the power, I think I could unlock this door and the one into the other sectors, but for now only the north door's button works, I'll open it now.")
			array_set(global.OpenedDoorsArray,1,1)
			global.IntroducedJudeToHabNPC1 = 1
			array_set(global.SeenTextArray,1,1)
			break;
		#endregion Region 1 Dialouge
	}
}