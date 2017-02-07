/// PlayerAttackState()
// touching an enemy
var enemyFound = noone;

if(direction == 180)
{
    enemyFound = instance_place(bbox_left, y, Peasant);
}
else if(direction == 0)
{
    enemyFound = instance_place(bbox_right, y, Peasant);
}
else if(direction == 90)
{
    enemyFound = instance_place(x, bbox_top, Peasant);
}
else if(direction == 270)
{
    enemyFound = instance_place(x, bbox_bottom, Peasant);
}

if(enemyFound)
{
    show_debug_message("Found!!!!!!!!!!!!!");
    state = PlayerMoveState;
}
else
{
    state = PlayerMoveState;
}
