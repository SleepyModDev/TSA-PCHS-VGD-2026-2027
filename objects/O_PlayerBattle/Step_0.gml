Get_Controls()
InputX = KeyRightHeld-KeyLeftHeld
InputY = KeyDownHeld-KeyUpHeld
MoveX = InputX*MoveSpd
MoveY = InputY*MoveSpd

//x move
if place_meeting(x+MoveX,y,O_BattleBox)
{
	x+=MoveX;
}
if !place_empty(x+MoveX,y,O_BattleBox) && (MoveX != 0)
{
	do {x+=InputX;} until place_meeting(x,y,O_BattleBox)
	x-=InputX
}

//y move
if place_meeting(x,y+MoveY,O_BattleBox)
{
	y+=MoveY;
}
if !place_empty(x,y+MoveY,O_BattleBox) && (MoveY != 0)
{
	do {y+=InputY;} until place_meeting(x,y,O_BattleBox)
	y-=InputY
}