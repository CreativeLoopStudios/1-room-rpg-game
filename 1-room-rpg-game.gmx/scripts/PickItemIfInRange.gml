/// PickItemIfInRange()
var itemInRange = IsInRange(10, Item);

if(itemInRange && itemInRange.visible)
{
    var itemPicked = false;
    
    if(object_is_ancestor(itemInRange.object_index, Weapon))
    {
        AddToHand(itemInRange, 1);
    }
    else if(object_is_ancestor(itemInRange.object_index, CraftedItem))
    {
        AddToHand(itemInRange, 0);
    }
    else
    {
        AddToCrafting(itemInRange);
    }
}
