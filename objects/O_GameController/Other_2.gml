//set volume levels to 100, will be divided by 100 when processed but need to be 100 for display reasons
global.MusicVol = 100;
global.SoundVol = 100;
global.MasterVol = 100;

//prepare global vars used for control between objects
global.DisablePlayerMovement = false;
global.DisplayDebugInfo = false;
global.FreezePlayer = false;

//prepare various other vars
QuitTime = 180;
QuitTimer = 0;

global.SeenTextArray = array_create(5000,false)
global.SeenTextArraySaved = array_create(5000,false)

global.InventoryArray = array_create(10,noone)
global.InventoryArraySaved = array_create(10,noone)

// area and puzzle tracking
global.ClearedAreasArray = array_create(5,false) //tracks if a region has been beaten
global.ClearedAreasArraySaved = array_create(5,false)
#region Area Room Arrays
global.ClearedPuzzlesArea1Array = array_create(5,false) //tracks if a puzzle in this region has been beaten
global.ClearedPuzzlesArea2Array = array_create(5,false)
global.ClearedPuzzlesArea3Array = array_create(5,false)
global.ClearedPuzzlesArea4Array = array_create(5,false)
global.ClearedPuzzlesArea5Array = array_create(5,false)

global.ClearedPuzzlesArea1ArraySaved = array_create(5,false)
global.ClearedPuzzlesArea2ArraySaved = array_create(5,false)
global.ClearedPuzzlesArea3ArraySaved = array_create(5,false)
global.ClearedPuzzlesArea4ArraySaved = array_create(5,false)
global.ClearedPuzzlesArea5ArraySaved = array_create(5,false)
#endregion Area Room Arrays