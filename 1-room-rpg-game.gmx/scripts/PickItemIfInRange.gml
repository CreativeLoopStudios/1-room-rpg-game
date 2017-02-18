/// PickItemIfInRange()
var itemInRange = IsItemInRange();

if(itemInRange && itemInRange.visible)
{
    if(object_is_ancestor(itemInRange.object_index, Weapon))
    {
        var itemPicked = AddToHand(itemInRange.object_index, 1);
        
        if(itemPicked)
        {
            rightHandWeapon = itemInRange;
            itemInRange.visible = false;
        }
    }
    else
    {
        var itemPicked = AddToCrafting(itemInRange.object_index);
        if(itemPicked)
        {
            itemInRange.visible = false;
        }
    }
}
