global.PlayerName = "Jude";
global.PlayerHP = 10;
global.PlayerMaxHP = 10;
global.PlayerMoney = 0;
global.PlayerLevel = 1;

#region arrays
//test stuff
global.ClearedTestPuzzlesArray = array_create(15,false)
global.ClearedTestPuzzlesArraySaved = array_create(15,false)

//text stuff
global.SeenTextArray = array_create(5000,false) //prob wont use all of these but better safe then sorry
global.SeenTextArraySaved = array_create(5000,false)

//Trigger stuff
global.TriggeredTriggersArray = array_create(5000,false) //prob wont use all of these but better safe then sorry
global.TriggeredTriggersArraySaved = array_create(5000,false)

//door stuff
global.OpenedDoorsArray = array_create(500,false) //prob wont use all of these but better safe then sorry
global.OpenedDoorsArraySaved = array_create(500,false)

//inventory stuff
global.InventoryArray = array_create(10,noone)
global.InventoryArraySaved = array_create(10,noone)

// area and puzzle tracking
global.ClearedAreasArray = array_create(6,false) //tracks if a region has been beaten
global.ClearedAreasArraySaved = array_create(6,false)
// area room arrays
global.ClearedPuzzlesArea1Array = array_create(3,false) //tracks if a puzzle in this region has been beaten
global.ClearedPuzzlesArea2Array = array_create(3,false)
global.ClearedPuzzlesArea3Array = array_create(3,false)
global.ClearedPuzzlesArea4Array = array_create(3,false)
global.ClearedPuzzlesArea5Array = array_create(3,false)
global.ClearedPuzzlesArea6Array = array_create(3,false)

global.ClearedPuzzlesArea1ArraySaved = array_create(3,false)
global.ClearedPuzzlesArea2ArraySaved = array_create(3,false)
global.ClearedPuzzlesArea3ArraySaved = array_create(3,false)
global.ClearedPuzzlesArea4ArraySaved = array_create(3,false)
global.ClearedPuzzlesArea5ArraySaved = array_create(3,false)
global.ClearedPuzzlesArea6ArraySaved = array_create(3,false)
#endregion arrays