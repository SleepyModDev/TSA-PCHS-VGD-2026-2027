if instance_exists(O_Player) {Camera_Follow(O_Player)}//camera state machine later
else {x=0;y=0}
camera_set_view_pos(view_camera[0], x, y)