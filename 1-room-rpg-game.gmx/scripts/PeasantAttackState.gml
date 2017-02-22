/// PeasantAttackState()
if(instance_exists(Player))
{
    var directionOfPlayer = floor(point_direction(x, y, Player.x, Player.y));
    
    if(directionOfPlayer >= 328 or directionOfPlayer <= 32)
    {
        sprite_index = sPeasantRight;
    }
    else if(directionOfPlayer >= 148 and directionOfPlayer <= 212)
    {
        sprite_index = sPeasantLeft;
    }
    else if(directionOfPlayer >= 58 and directionOfPlayer <= 122)
    {
        sprite_index = sPeasantBack;
    }
    else if(directionOfPlayer >= 238 and directionOfPlayer <= 302)
    {
        sprite_index = sPeasantFront;
    }
    
    // damage the player
    if(not(canDoDamage))
    {
        alarm[0] = 2 * room_speed;
        canDoDamage = true;
    }

    // when the player vanishes from the enemy vision
    if(not(place_meeting(x + 1, y, Player)
        or place_meeting(x - 1, y, Player)
        or place_meeting(x, y + 1, Player)
        or place_meeting(x, y - 1, Player)))
    {   
        state = PeasantChasingPlayerState;
    }
}
