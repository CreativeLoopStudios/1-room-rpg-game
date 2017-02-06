/// PlayerMoveState()

if (right or left)
{
    hspd += (right - left) * acc;
    
    if (hspd > spd) hspd = spd;
    if (hspd < -spd) hspd = -spd;
}

if(up or down)
{
    vspd += (down - up) * acc;
    
    if (vspd > spd) vspd = spd;
    if (vspd < -spd) vspd = -spd;
}

if(!up and !down and !right and !left)
{
    ApplyFriction(0.3);
}

if(hspd > 0)
{
    sprite_index = sPlayerRight;
    image_speed = animSpd;
}
else if(hspd < 0)
{
    sprite_index = sPlayerLeft;
    image_speed = animSpd;
}
else if(vspd > 0)
{
    sprite_index = sPlayerFront;
    image_speed = animSpd;
}
else if(vspd < 0)
{
    sprite_index = sPlayerBack;
    image_speed = animSpd;
}
else
{
    image_index = 1;
    image_speed = 0;
}

// Move if needed
x += hspd;
y += vspd;
