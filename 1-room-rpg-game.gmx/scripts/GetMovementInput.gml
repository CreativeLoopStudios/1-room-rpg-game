/// GetMovementInput()
// Control the player
up = keyboard_check(vk_up) or keyboard_check(ord('W'));
down = keyboard_check(vk_down) or keyboard_check(ord('S'));
right = keyboard_check(vk_right) or keyboard_check(ord('D'));
left = keyboard_check(vk_left) or keyboard_check(ord('A'));

space = keyboard_check_pressed(vk_space);

e_key = keyboard_check_pressed(ord('E'));

// Override the controls for a gamepad
/*
var gp_id = 0;
var thresh = .5;

if (gamepad_is_connected(gp_id))
{
    right = gamepad_axis_value(gp_id, gp_axislh) > thresh;
    left = gamepad_axis_value(gp_id, gp_axislh) < -thresh;
    up = gamepad_button_check_pressed(gp_id, gp_face1);
    up_release = gamepad_button_check_released(gp_id, gp_face1);
    down = gamepad_axis_value(gp_id, gp_axislv) > thresh;
}*/
