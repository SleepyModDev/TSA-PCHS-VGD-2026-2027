global.PlayerWasAtX = O_Player.x
global.PlayerWasAtY = O_Player.y
global.PlayerWasAtRoom = room

instance_deactivate_object(O_Player)
instance_deactivate_object(O_CameraController)

room_goto(RM_Battle)
camera_set_view_pos(view_camera[0],0,0)
frame=0

enum EnemyStates
{
	Idle,
	Attack,
	Down,
}