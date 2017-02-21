/// PeasantChasingPlayerState()
if(instance_exists(Player) && canEnter)
{    
    mp_potential_step_object(Player.x, Player.y, spd, Solid);
    PeasantSetSprite();
    
    if((place_meeting(x + 1, y, Player)
        or place_meeting(x - 1, y, Player)
        or place_meeting(x, y + 1, Player)
        or place_meeting(x, y - 1, Player))
        and IsObjectInFourDirections(Player))
    {
        state = PeasantAttackState;
    }
}
