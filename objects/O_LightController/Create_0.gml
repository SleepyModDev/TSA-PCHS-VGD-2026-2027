window_set_fullscreen(true)

application_surface_draw_enable(false);

var _Camera = view_get_camera(0)
var _CamHeight = 270;
var _CamWidth = 480;

LightSurface = surface_create(_CamWidth, _CamHeight);

global.RoomDark = 0