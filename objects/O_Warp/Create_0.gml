
enum States 
{
	In,
	Out
}
State = States.Out;
Delay = 1;
Delayed = 0;

TransitionSprite = S_BlankSquare;
SubImgIncrement = sprite_get_speed(TransitionSprite)/room_speed;
SubImg = 0;
IMax = sprite_get_number(TransitionSprite);

XMax = display_get_gui_width()/128
YMax = display_get_gui_height()/128


TransitionColor = c_black;
SpriteScaleMult = 1;
TransitionAlpha = 1;
TransitionRotation = 0;

global.FreezePlayer = 1