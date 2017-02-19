/// PickItemIfInRange()
var itemPicked = false;
var itemInRange = IsInRange(10, Item);

if(itemInRange && itemInRange.visible)
{
    if(object_is_ancestor(itemInRange.object_index, Weapon))
    {
        itemPicked = AddToHand(itemInRange, 1);
    }
    else if(object_is_ancestor(itemInRange.object_index, CraftedItem))
    {
        itemPicked = AddToHand(itemInRange, 0);
    }
    else
    {
        itemPicked = AddToCrafting(itemInRange);
    }
}

return itemPicked;
