if(newCol == 1){
	newCol = instance_create_layer(x,y, "Collision", O_WallCollision);
	newCol.image_xscale = 0.5;
	newCol.image_yscale = 0.5;
	newCol.Parent = id;
}
var PlayerCol;
if(!instance_exists(O_PlayerSecondaryCollision)){
	PlayerCol = instance_create_layer(0,0, "Collision", O_PlayerSecondaryCollision);
	
}else PlayerCol = instance_find(O_PlayerSecondaryCollision, 0);
	PlayerCol.newCol = newCol;
	PlayerCol.BoxCol = id;
	PlayerCol.Player = instance_find(O_PlayerOverworld, 0);
if(secondCol == 1){
	secondCol = instance_create_layer(x,y, "Boxes", O_SecondaryPushBoxCol);
	secondCol.Parent = id;
	secondCol.PlayerCol = PlayerCol;
	secondCol.newCol = newCol;
	
}

var usedCollisions = [];
var collisions = layer_get_all_elements("Collision");
for(var i = 0; i < array_length(collisions); i++){
	 if (layer_get_element_type(collisions[i]) == layerelementtype_instance) {
		 array_push(usedCollisions, layer_instance_get_instance(collisions[i]));
	 }
}
leftLocked = false;
rightLocked = false;
upLocked = false;
downLocked = false;
lastMoveX = 32;
lastMoveY = 32;
for(var i = 0; i < array_length(usedCollisions); i++){
	if(usedCollisions[i].object_index == O_WallCollision && usedCollisions[i] != newCol){
		secondCol.usedCol = usedCollisions[i];
		with(secondCol)if(place_meeting(x+32,y,usedCol)){
			Parent.rightLocked = true;
			Parent.lastMoveX = 32;
			while(place_meeting(x+Parent.lastMoveX,y,usedCol)){
				Parent.lastMoveX--;	
			}
		}
		with(secondCol)if(place_meeting(x-32,y,usedCol)){
			Parent.leftLocked = true;
			Parent.lastMoveX = 32;
			while(place_meeting(x - Parent.lastMoveX,y,usedCol)){
				Parent.lastMoveX--;	
			}
		}
		with(secondCol)if(place_meeting(x,y-32,usedCol)){
			Parent.upLocked = true;
			Parent.lastMoveY = 32;
			while(place_meeting(x, y - Parent.lastMoveY,usedCol)){
				Parent.lastMoveY--;	
			}
		}
		with(secondCol)if(place_meeting(x,y+32,usedCol)){
			Parent.downLocked = true;
			Parent.lastMoveY = 32;
			while(place_meeting(x, y + Parent.lastMoveY,usedCol)){
				Parent.lastMoveY--;	
			}
		}
	}
}
with(PlayerCol){
	Get_Controls();
	if(place_meeting(x,y, newCol)){
		if(BoxCol.nextposX == BoxCol.x){
			if(KeySelectPressed){
				if(Player.FaceDir == 0){
					if(!BoxCol.rightLocked){
						BoxCol.nextposX = BoxCol.x + 32;
					}else BoxCol.nextposX = BoxCol.x + BoxCol.lastMoveX;
				}
				if(Player.FaceDir == 2){
					if(!BoxCol.leftLocked){
						BoxCol.nextposX = BoxCol.x - 32;
					}else BoxCol.nextposX = BoxCol.x - BoxCol.lastMoveX;
				}
			}
		}
		if(BoxCol.nextposY == BoxCol.y){
			if(KeySelectPressed){
				if(Player.FaceDir == 1){
					if(!BoxCol.upLocked){
						BoxCol.nextposY = BoxCol.y - 32;
					}else BoxCol.nextposY = BoxCol.y - BoxCol.lastMoveY;
				}
				if(Player.FaceDir == 3){
					if(!BoxCol.downLocked){
						BoxCol.nextposY = BoxCol.y + 32;
					}else BoxCol.nextposY = BoxCol.y + BoxCol.lastMoveY;
				}
			}
		}
	}
	if(BoxCol.lastMoveX>4){
		if(BoxCol.nextposX != BoxCol.x){
			BoxCol.x = BoxCol.x + 4*sign(BoxCol.nextposX - BoxCol.x);	
		}
	}else{
		if(BoxCol.nextposX != BoxCol.x){
			BoxCol.x = BoxCol.x + BoxCol.lastMoveX*sign(BoxCol.nextposY - BoxCol.x);	
		}
	}
	if(BoxCol.lastMoveY>4){
		if(BoxCol.nextposY != BoxCol.y){
			BoxCol.y = BoxCol.y + 4*sign(BoxCol.nextposY - BoxCol.y);
		}
	}else{
		if(BoxCol.nextposY != BoxCol.y){
			BoxCol.y = BoxCol.y + BoxCol.lastMoveY*sign(BoxCol.nextposY - BoxCol.y);	
		}
	}
}

with(newCol){
	x = Parent.x;
	y = Parent.y;
}
with(secondCol){
	x = Parent.x;
	y = Parent.y;
}