/// PeasantChasingPlayerState()
if(instance_exists(Player) && canEnter)
{    
    mp_potential_step_object(Player.x, Player.y, spd, Solid);
    PeasantSetSprite();
}
