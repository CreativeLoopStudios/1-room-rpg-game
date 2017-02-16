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

if(itemInRange and itemInRange.visible)
{
    if(object_is_ancestor(itemInRange.object_index, Weapon))
    {
        var itemPicked = AddToHand(itemInRange.object_index, 1);
        
        if(itemPicked)
        {
            rightHandWeapon = itemInRange;
        
            with(itemInRange)
            {
                visible = false;
            }
        }
    }
    else
    {
        var itemPicked = AddToCrafting(itemInRange.object_index);
        if(itemPicked)
        {
            with(itemInRange)
            {
                visible = false;
            }
        }
    }
}
