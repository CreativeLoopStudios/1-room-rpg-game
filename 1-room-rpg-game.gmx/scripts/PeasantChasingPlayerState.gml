/// PeasantChasingPlayerState()
if(instance_exists(Player) && !isNew)
{    
    mp_potential_step_object(Player.x, Player.y, spd, Solid);
}
