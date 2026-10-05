global.PlayerWasAtX = O_PlayerOverworld.x
global.PlayerWasAtY = O_PlayerOverworld.y
global.PlayerWasAtRoom = room

instance_deactivate_object(O_PlayerOverworld)
instance_deactivate_object(O_CameraController)

room_goto(RM_Battle)
camera_set_view_pos(view_camera[0],0,0)
frame=0

//create buttons
_Repair = instance_create_depth(80,200,0,O_BattleButton)
with _Repair {Type = "Repair"}
_Heal = instance_create_depth(160,200,0,O_BattleButton)
with _Heal {Type = "Heal"}
_Defend = instance_create_depth(240,200,0,O_BattleButton)
with _Defend {Type = "Defend"}
_Check = instance_create_depth(320,200,0,O_BattleButton)
with _Check {Type = "Check"}


enum EnemyStates
{
	Idle,
	Attack,
	Down,
}