function Get_Controls()
{
	KeyLeftHeld = keyboard_check(vk_left);
	KeyLeftPressed = keyboard_check_pressed(vk_left);
	
	KeyRightHeld = keyboard_check(vk_right);
	KeyRightPressed = keyboard_check_pressed(vk_right);
	
	KeyUpHeld = keyboard_check(vk_up);
	KeyUpPressed = keyboard_check_pressed(vk_up);
	
	KeyDownHeld = keyboard_check(vk_down);
	KeyDownPressed = keyboard_check_pressed(vk_down);
	
	KeySelectHeld = keyboard_check(ord("Z"));
	KeySelectPressed = keyboard_check_pressed(ord("Z"));
	
	KeyBackHeld = keyboard_check(ord("X"));
	KeyBackPressed = keyboard_check_pressed(ord("X"));
	
	KeyDebugHeld = keyboard_check(vk_f4);
}