/// PeasantHitState()
if(hit)
{
    switch(directionOfHit)
    {
        case 0:
            hspd = slideSpd;
            break;
        case 180:
            hspd = -slideSpd;
            break;
        case 90:
            vspd = -slideSpd;
            break;
        case 270:
            vspd = slideSpd;
            break;
    }
    
    Move(hspd, vspd, Solid);
    //DirectionMoveBounce(Solid);
    slideSpd -= .25;
}

if(slideSpd <= 0)
{
    hit = false;
    state = PeasantChasingPlayerState;
}
