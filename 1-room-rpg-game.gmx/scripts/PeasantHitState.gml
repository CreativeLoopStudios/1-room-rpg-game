/// PeasantHitState()
if(hit and instance_exists(Player))
{
    hit = false;
    
    switch(directionOfHit)
    {
        case 0:
            hspd = spdHit;
            break;
        case 180:
            hspd = -spdHit;
            break;
        case 90:
            vspd = -spdHit;
            break;
        case 270:
            vspd = spdHit;
            break;
    }
    alarm[0] = 0.5 * room_speed;
}

//Move(hspd, vspd, Solid);
DirectionMoveBounce(Solid);
