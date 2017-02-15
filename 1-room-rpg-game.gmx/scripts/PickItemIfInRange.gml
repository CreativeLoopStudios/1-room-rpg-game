/// PickItemIfInRange()
var itemInRange = noone;
var middleWidthPlayer = sprite_get_width(sPlayerFront) / 2;
var middleHeightPlayer = sprite_get_height(sPlayerFront) / 2;

if(direction == 0)
{   
    itemInRange = collision_rectangle(x + middleWidthPlayer, y, x + middleWidthPlayer, y + middleHeightPlayer, Item, false, true);
}
else if(direction == 180)
{
    itemInRange = collision_rectangle(x - middleWidthPlayer, y, x - middleWidthPlayer, y + middleHeightPlayer, Item, false, true);
}
else if(direction == 90)
{
    itemInRange = collision_rectangle(x - middleWidthPlayer, y, x + middleWidthPlayer, y, Item, false, true);
}
else if(direction == 270)
{
    itemInRange = collision_rectangle(x - middleWidthPlayer, y + middleHeightPlayer, x + middleWidthPlayer, y + middleHeightPlayer, Item, false, true);
}

if(itemInRange)
{
    if(object_is_ancestor(itemInRange.object_index, Weapon))
    {
        rightHandWeapon = itemInRange;
        
        with(itemInRange)
        {
            AddToHand(object_index);
            visible = false;
        }
    }
    else
    {
        with(itemInRange)
        {
            AddToCrafting(object_index);
            visible = false;
        }
    }
}
