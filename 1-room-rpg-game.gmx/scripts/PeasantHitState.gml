/// PeasantHitState()

if(hit)
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
    
    DirectionMoveBounce(Solid);
    alarm[0] = 0.5 * room_speed;
}
