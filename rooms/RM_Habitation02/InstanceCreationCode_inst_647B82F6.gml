sprite_index = S_DoorsPlainMetal
image_speed	= 0
image_index = 1
depth = -y
if array_get(global.OpenedDoorsArray,1) {instance_destroy(inst_1714948); instance_destroy(self);}