/// PickItemIfInRange()
var itemPicked = false;
var itemInRange = IsInRange(10, Item);

if(itemInRange && itemInRange.visible)
{
    var itemPicked = noone;
    
    if(object_is_ancestor(itemInRange.object_index, Weapon))
    {
        itemPicked = AddToHand(itemInRange, 1);
        if(itemPicked) rightHandWeapon = itemInRange;
    }
	else if(object_is_ancestor(itemInRange.object_index, CraftedItem))
    {
        itemPicked = AddToHand(itemInRange, 0);
    }
    else
    {
    
        itemPicked = AddToCrafting(itemInRange);
    }
    
    if(itemPicked)
    {
        itemInRange.visible = false;
        itemInRange.x = 0;
        itemInRange.y = 0;
    }
}

return itemPicked;
