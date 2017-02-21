/// PeasantHitState()
if(hit and instance_exists(Player))
{
    hit = false;
    
    switch(directionOfHit)
    {
        case 0:
        case 180:
            hspd = (sign(x - Player.x) * spdHit);
            break;
        case 90:
        case 270:
            vspd = (sign(y - Player.y) * spdHit);
            break;
    }
    
    Move(hspd, vspd, Solid);
    alarm[0] = 0.5 * room_speed;
}
