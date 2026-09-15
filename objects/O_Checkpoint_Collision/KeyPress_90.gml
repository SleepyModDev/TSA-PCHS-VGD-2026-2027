if instance_exists(O_Player)
{
	with O_Player
	if place_meeting(x, y, O_Checkpoint_Collision)
	{
		//set respawn point
		global.RespawnRoom = room;
		global.RespawnX = x;
		global.RespawnY = y;
		
		//save progress
			//area progress
		array_copy(global.InventoryArraySaved,0,global.InventoryArray,0,array_length(global.InventoryArray))
		array_copy(global.ClearedAreasArraySaved,0,global.ClearedAreasArray,0,array_length(global.InventoryArray))
			//puzzle progress per area
		array_copy(global.ClearedPuzzlesArea1ArraySaved,0,global.ClearedPuzzlesArea1Array,0,array_length(global.ClearedPuzzlesArea1Array))
		array_copy(global.ClearedPuzzlesArea2ArraySaved,0,global.ClearedPuzzlesArea2Array,0,array_length(global.ClearedPuzzlesArea2Array))
		array_copy(global.ClearedPuzzlesArea3ArraySaved,0,global.ClearedPuzzlesArea3Array,0,array_length(global.ClearedPuzzlesArea3Array))
		array_copy(global.ClearedPuzzlesArea4ArraySaved,0,global.ClearedPuzzlesArea4Array,0,array_length(global.ClearedPuzzlesArea4Array))
		array_copy(global.ClearedPuzzlesArea5ArraySaved,0,global.ClearedPuzzlesArea5Array,0,array_length(global.ClearedPuzzlesArea5Array))
		
		audio_play_sound(SND_TextBlip,0,0,1,0,.5)
		
	}
}