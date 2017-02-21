///IsItemInRange(ditance, obj)

var contsOfCollision = argument0;
var objType = argument1;

var itemInRange = noone;
var middleWidthPlayer = sprite_get_width(sPlayerFront) / 2;
var middleHeightPlayer = sprite_get_height(sPlayerFront) / 2;

if(direction == 0)
{   
    itemInRange = collision_rectangle(x + middleWidthPlayer, y, x + middleWidthPlayer + contsOfCollision, y + middleHeightPlayer, objType, false, true);
}
else if(direction == 180)
{
    itemInRange = collision_rectangle(x - middleWidthPlayer - contsOfCollision, y, x - middleWidthPlayer, y + middleHeightPlayer, objType, false, true);
}
else if(direction == 90)
{
    itemInRange = collision_rectangle(x - middleWidthPlayer, y, x + middleWidthPlayer, y - contsOfCollision, objType, false, true);
}
else if(direction == 270)
{
    itemInRange = collision_rectangle(x - middleWidthPlayer, y + middleHeightPlayer, x + middleWidthPlayer, y + middleHeightPlayer + contsOfCollision, objType, false, true);
}

return itemInRange;
