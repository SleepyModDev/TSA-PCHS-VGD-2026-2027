if(place_meeting(x,y, O_PushBox)){
	if(numofboxes < boxCounter){
		var box = instance_place(x,y, O_PushBox);
		numofboxes++;	
		instance_destroy(box.newCol);
		instance_destroy(box.secondCol);
		instance_destroy(box);
		var dumbox = instance_create_layer(x,y,"Box_Items",O_DummyBox);
		instance_destroy();
	}
}
var player = instance_find(O_PlayerOverworld , 0);
if(player.bbox_left >= bbox_left && 
	player.bbox_right <= bbox_right && 
    player.bbox_top >= bbox_top && 
	player.bbox_bottom <= bbox_bottom){
	//if player is entirely within this collision mask kill the player. donno how you are gonna implement the kill player so you get to code this part!!!!!!!! yay!!!!!!
	show_debug_message("you died sux2suc");
}