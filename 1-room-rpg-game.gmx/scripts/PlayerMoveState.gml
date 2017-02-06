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

// Move if needed
x += hspd;
y += vspd;
