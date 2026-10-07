var wallCollisions = [];
var array = layer_get_all_elements("Collision");
for(var i = 0; i < array_length(array); i++){
		if(layer_get_element_type(array[i]) == O_WallCollision){
				array_push(wallCollisions, layer_instance_get_instance(array[i]));
		}
	}
for(var i = 0; i < array_length(wallCollisions); i++){
	if(place_meeting(x, y, wallCollisions[i])){
		instance_destroy(wallCollisions[i]);	
	}
}
var newCol = instance_create_layer(x,y, "Collision", O_WallCollision);
newCol.image_xscale = 0.5;
newCol.image_yscale = 0.5;
