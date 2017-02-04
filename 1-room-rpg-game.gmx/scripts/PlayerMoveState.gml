var keyboardUp = keyboard_check(vk_up);
var keyboardDown = keyboard_check(vk_down);
var keyboardRight = keyboard_check(vk_right);
var keyboardLeft = keyboard_check(vk_left);

if(keyboardUp)
{
    vspeed = -spd;
}

if(keyboardDown)
{
    vspeed = spd;
}

if(keyboardRight)
{
    hspeed = spd
}

if(keyboardLeft)
{
    hspeed = -spd;
}

if(!keyboardUp and !keyboardDown and !keyboardRight and !keyboardLeft)
{
    if(vspeed != 0)
    {
        if(vspeed > 0)
        {
            vspeed -= deccel;
        }
        else
        {
            vspeed += deccel;
        }
    }
    if(hspeed != 0)
    {
        if(hspeed > 0)
        {
            hspeed -= deccel;
        }
        else
        {
            hspeed += deccel;
        }
    }
}
