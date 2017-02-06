/// ApplyFriction(amount)
var amount = argument0;

// if is moving
if hspd != 0
{
    if (abs(hspd) - amount > 0)
    {
        hspd -= amount * sign(hspd);
    }
    else
    {
        hspd = 0;
    }
}

if vspd != 0
{
    if (abs(vspd) - amount > 0)
    {
        vspd -= amount * sign(vspd);
    }
    else
    {
        vspd = 0;
    }
}
