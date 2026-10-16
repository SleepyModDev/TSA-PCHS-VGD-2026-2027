Get_Controls();
if(place_empty(x,y,O_WallCollision)){
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
with(PlayerCol){
	if(place_meeting(x,y, newCol)){
		if(Player.FaceDir == 0)BoxCol.x+=1;
		if(Player.FaceDir == 2)BoxCol.x-=1;
		if(Player.FaceDir == 1)BoxCol.y-=1;
		if(Player.FaceDir == 3)BoxCol.y+=1;
	}
}
with(newCol){
	x = Parent.x;
	y = Parent.y;
}