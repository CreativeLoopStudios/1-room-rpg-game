///IsItemInRange

var itemInRange = noone;
var middleWidthPlayer = sprite_get_width(sPlayerFront) / 2;
var middleHeightPlayer = sprite_get_height(sPlayerFront) / 2;
var contsOfCollision = 10;

if(direction == 0)
{   
    itemInRange = collision_rectangle(x + middleWidthPlayer, y, x + middleWidthPlayer + contsOfCollision, y + middleHeightPlayer, Item, false, true);
}
else if(direction == 180)
{
    itemInRange = collision_rectangle(x - middleWidthPlayer - contsOfCollision, y, x - middleWidthPlayer, y + middleHeightPlayer, Item, false, true);
}
else if(direction == 90)
{
    itemInRange = collision_rectangle(x - middleWidthPlayer, y, x + middleWidthPlayer, y - contsOfCollision, Item, false, true);
}
else if(direction == 270)
{
    itemInRange = collision_rectangle(x - middleWidthPlayer, y + middleHeightPlayer, x + middleWidthPlayer, y + middleHeightPlayer + contsOfCollision, Item, false, true);
}

return itemInRange
