/// GetInput()
// Control the player
up = keyboard_check(vk_up) or keyboard_check(ord('W'));
down = keyboard_check(vk_down) or keyboard_check(ord('S'));
right = keyboard_check(vk_right) or keyboard_check(ord('D'));
left = keyboard_check(vk_left) or keyboard_check(ord('A'));

space = keyboard_check_pressed(vk_space);

// action button
e_key = keyboard_check_pressed(ord('E'));

// drop left hand button
one_key = keyboard_check_pressed(ord('1'));

// drop right hand button
two_key = keyboard_check_pressed(ord('2'));

// drop left craft button
three_key = keyboard_check_pressed(ord('3'));

// drop right craft button
four_key = keyboard_check_pressed(ord('4'));

// craft!!!
c_key = keyboard_check_pressed(ord('C'));

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
