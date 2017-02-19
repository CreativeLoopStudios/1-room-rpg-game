///SetPlayerSprite
var hasHammer = false;

if(hspd > 0)
{
    direction = 0;
    image_speed = animSpd;
}
else if(hspd < 0)
{
    direction = 180;
    image_speed = animSpd;
}
else if(vspd > 0)
{
    direction = 270;
    image_speed = animSpd;
}
else if(vspd < 0)
{
    direction = 90;
    image_speed = animSpd;
}
else
{
    image_index = 1;
    image_speed = 0;
}

if(rightHandWeapon != noone && rightHandWeapon.object_index == Hammer)
{
    hasHammer = true;
}

if(direction == 0)
{
    if(hasHammer) {
        sprite_index = sPlayerWithHammerRight;
    }
    else 
    {
        sprite_index = sPlayerRight;
    }
}
else if(direction == 90)
{
    if(hasHammer) {
        sprite_index = sPlayerWithHammerBack;
    }
    else 
    {
        sprite_index = sPlayerBack;
    }
}
else if(direction == 180)
{
    if(hasHammer) {
        sprite_index = sPlayerWithHammerLeft;
    }
    else 
    {
        sprite_index = sPlayerLeft;
    }
}
else if(direction == 270)
{
    if(hasHammer) {
        sprite_index = sPlayerWithHammerFront;
    }
    else 
    {
        sprite_index = sPlayerFront;
    }
}
