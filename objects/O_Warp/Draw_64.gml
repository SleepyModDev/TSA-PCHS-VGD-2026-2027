

switch(State)
{
case States.Out :
	for (var yy = 0; yy <= YMax; ++yy) 
	{
	   for (var xx = 0; xx <= XMax; ++xx) 
	   {
	    draw_sprite_ext(TransitionSprite,min(max(0,SubImg-xx-yy), IMax - 1),xx*128,yy*128,SpriteScaleMult,SpriteScaleMult,TransitionRotation,TransitionColor,TransitionAlpha)
	   }
	}
break;
case States.In :
	for (var yy = 0; yy <= YMax; ++yy) 
	{
	   for (var xx = 0; xx <= XMax; ++xx) 
	   {
	    draw_sprite_ext(TransitionSprite,min(max(0,SubImg-xx-yy), IMax - 1),XMax*128-xx*128,YMax*128-64-yy*128,SpriteScaleMult,SpriteScaleMult,TransitionRotation,TransitionColor,TransitionAlpha)
	   }
	}
break;
}





