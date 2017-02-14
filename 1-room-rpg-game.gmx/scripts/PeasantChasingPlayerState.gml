/// PeasantChasingPlayerState()
if(instance_exists(Player))
{
    /*directionOfPlayer = point_direction(x, y, Player.x, Player.y);
    hspd = lengthdir_x(spd, directionOfPlayer);
    vspd = lengthdir_y(spd, directionOfPlayer);
    Move(hspd, vspd, Solid);*/
    
    mp_potential_step_object(Player.x, Player.y, spd, Solid);
    
}
