		var _Camera = view_get_camera(0);
		var _Light_Sprite = S_Light01
if !surface_exists(self.LightSurface)
	{

		var _CamHeight = 270;
		var _CamWidth = 480;

		LightSurface = surface_create(_CamWidth, _CamHeight);
	}

surface_set_target(self.LightSurface);
draw_clear(c_black);
camera_apply(_Camera);

gpu_set_blendmode(bm_subtract);
var _Scale =2 + 0.125*sin(current_time/2000);

with(O_LightInstance)
{
	draw_sprite_ext(_Light_Sprite, 0, self.x, self.y, _Scale*.5, _Scale*.5, 0,c_white, .8);
}

with(O_PlayerOverworld)
{
	draw_sprite_ext(_Light_Sprite, 0, self.x, self.y-28, _Scale*.75, _Scale*.65, 0,c_white, 1);
}

with(O_PipeEnd)
{
	draw_sprite_ext(_Light_Sprite, 0, self.x+16, self.y+16, _Scale*.25, _Scale*.25, 0,c_white, .5);
}
with(O_PipeStart)
{
	draw_sprite_ext(_Light_Sprite, 0, self.x+16, self.y+16, _Scale*.25, _Scale*.25, 0,c_white, .5);
}

gpu_set_blendmode(bm_normal);

surface_reset_target();
