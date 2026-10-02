var buttons = layer_get_all_elements("Buttons");
var buttonsExist = [];
for(var i = 0; i<array_length(buttons); i++)
{
	if (layer_get_element_type(buttons[i]) == layerelementtype_instance) {
        array_push(buttonsExist, layer_instance_get_instance(buttons[i]));
    }
}
Get_Controls();
if(KeyRightPressed)selected++;
if(KeyLeftPressed)selected--;
if(selected<0)selected = array_length(buttonsExist) - 1;
if(selected >= array_length(buttonsExist))selected = 0;
x = buttonsExist[selected].x - 20;
y = buttonsExist[selected].y + ((buttonsExist[selected].sprite_height/2) - 8);
if(KeySelectPressed){
	if(buttonsExist[selected].object_index == O_StartButton){
		room_goto(RM_Test);
	}
}