if(place_meeting(x,y, O_PushBox)){
	if(numofboxes < boxCounter){
		var box = instance_place(x,y, O_PushBox);
		numofboxes++;	
		instance_destroy(box.newCol);
		instance_destroy(box.secondCol);
		instance_destroy(box);
		var dumbox = instance_create_layer(x,y,"Box_Items",O_DummyBox);
		visible = 0;
	}
}