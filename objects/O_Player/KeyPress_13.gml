x = global.RespawnX
y = global.RespawnY
room_goto(global.RespawnRoom)

//save progress
	//seen text
array_copy(global.SeenTextArray,0,global.SeenTextArraySaved,0,array_length(global.SeenTextArray))
	//area progress
array_copy(global.InventoryArray,0,global.InventoryArraySaved,0,array_length(global.InventoryArray))
array_copy(global.ClearedAreasArray,0,global.ClearedAreasArraySaved,0,array_length(global.InventoryArray))
	//puzzle progress per area
array_copy(global.ClearedPuzzlesArea1Array,0,global.ClearedPuzzlesArea1ArraySaved,0,array_length(global.ClearedPuzzlesArea1Array))
array_copy(global.ClearedPuzzlesArea2Array,0,global.ClearedPuzzlesArea2ArraySaved,0,array_length(global.ClearedPuzzlesArea2Array))
array_copy(global.ClearedPuzzlesArea3Array,0,global.ClearedPuzzlesArea3ArraySaved,0,array_length(global.ClearedPuzzlesArea3Array))
array_copy(global.ClearedPuzzlesArea4Array,0,global.ClearedPuzzlesArea4ArraySaved,0,array_length(global.ClearedPuzzlesArea4Array))
array_copy(global.ClearedPuzzlesArea5Array,0,global.ClearedPuzzlesArea5ArraySaved,0,array_length(global.ClearedPuzzlesArea5Array))
	//test puzzle progress
array_copy(global.ClearedTestPuzzlesArray,0,global.ClearedTestPuzzlesArraySaved,0,array_length(global.ClearedTestPuzzlesArray))