/// PeasantAttackState()
if(instance_exists(chaseObject))
{
    var directionOfPlayer = floor(point_direction(x, y, chaseObject.x, chaseObject.y));
    
    if(directionOfPlayer >= 328 or directionOfPlayer <= 32)
    {
        sprite_index = asset_get_index(type + "AtckRight");;
    }
    else if(directionOfPlayer >= 148 and directionOfPlayer <= 212)
    {
        sprite_index = asset_get_index(type + "AtckLeft");
    }
    else if(directionOfPlayer >= 58 and directionOfPlayer <= 122)
    {
        sprite_index = asset_get_index(type + "AtckBack");
    }
    else if(directionOfPlayer >= 238 and directionOfPlayer <= 302)
    {
        sprite_index = asset_get_index(type + "AtckFront");;
    }
    
    // damage the player
    if(not(canDoDamage))
    {
        alarm[0] = 1 * room_speed;
        canDoDamage = true;
    }

    // when the player vanishes from the enemy vision
    if(not(place_meeting(x + 1, y, chaseObject)
        or place_meeting(x - 1, y, chaseObject)
        or place_meeting(x, y + 1, chaseObject)
        or place_meeting(x, y - 1, chaseObject)))
    {   
        state = PeasantChasingState;
    }
}
