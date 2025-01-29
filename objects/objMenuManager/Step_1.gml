global.escape = keyboard_check_pressed(vk_escape);

if open
{
	global.confirm = keyboard_check_pressed(vk_enter);
	
	global.l = keyboard_check(vk_left) || keyboard_check(ord("A"));
	global.r = keyboard_check(vk_right) || keyboard_check(ord("D"));
	
	l = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	r = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	u = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	d = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
}