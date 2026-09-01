function SCR_GetControls()
{
	KeyLeftHeld = keyboard_check(vk_left);
	KeyLeftPressed = keyboard_check_pressed(vk_left);
	
	KeyRightHeld = keyboard_check(vk_right);
	KeyRightPressed = keyboard_check_pressed(vk_right);
	
	KeyUpHeld = keyboard_check(vk_up);
	KeyUpPressed = keyboard_check_pressed(vk_up);
	
	KeyDownHeld = keyboard_check(vk_down);
	KeyDownPressed = keyboard_check_pressed(vk_down);
}