var _WinW =window_get_width()
var _WinH = window_get_height()

draw_surface_stretched(application_surface,0,0,_WinW, _WinH);

draw_set_alpha(global.RoomDark)
draw_surface_stretched(self.LightSurface,0,0, _WinW, _WinH);
draw_set_alpha(1)