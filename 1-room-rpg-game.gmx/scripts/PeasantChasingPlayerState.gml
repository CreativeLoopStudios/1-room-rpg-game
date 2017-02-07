/// PeasantChasingPlayerState()
if(instance_exists(Player))
{
    direction = point_direction(x, y, Player.x, Player.y);
    speed = spd;
}
