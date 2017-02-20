/// PickItemIfInRange()
var itemInRange = IsItemInRange();

if(itemInRange && itemInRange.visible)
{
    var itemPicked = noone;
    
    if(object_is_ancestor(itemInRange.object_index, Weapon))
    {
        itemPicked = AddToHand(itemInRange, 1);
        if(itemPicked) rightHandWeapon = itemInRange;
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
