/// PlayerMoveState()

// check if up or down key pressed
if(up or down)
{
    vspd += (down - up) * acc;
    
    if (vspd > spd) vspd = spd;
    if (vspd < -spd) vspd = -spd;
}

if (right or left)
{
    hspd += (right - left) * acc;
    
    if (hspd > spd) hspd = spd;
    if (hspd < -spd) hspd = -spd;
}

// apply friction when all keys are released
if((!up and !down) or (!right and !left))
{
    ApplyFriction(0.3);
}

if(hspd > 0)
{
    sprite_index = sPlayerRight;
    direction = 0;
    image_speed = animSpd;
}
else if(hspd < 0)
{
    sprite_index = sPlayerLeft;
    direction = 180;
    image_speed = animSpd;
}
else if(vspd > 0)
{
    sprite_index = sPlayerFront;
    direction = 270;
    image_speed = animSpd;
}
else if(vspd < 0)
{
    sprite_index = sPlayerBack;
    direction = 90;
    image_speed = animSpd;
}
else
{
    image_index = 1;
    image_speed = 0;
}

// Move if needed
Move(hspd, vspd, Solid);

// attack state
if(space and rightHandWeapon)
{
    state = PlayerAttackState;
}

// get item on ground
if(e_key)
{
    PickItemIfInRange();
}
