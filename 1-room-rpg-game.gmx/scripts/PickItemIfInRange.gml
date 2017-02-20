/// PickItemIfInRange()
var itemPicked = false;
var itemInRange = IsInRange(10, Item);

if(itemInRange and itemInRange.visible)
{
    var itemPicked = noone;
    
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
        var emptySlot = noone;
        
        with(Inventory)
        {
            for(var i = 0; i < totalCraftingSlots; i++)
            {
                if(craftSlot[i] == noone)
                {
                    emptySlot = i;
                    break;
                }
            }
        }
    
        if(emptySlot != noone)
        {
            itemPicked = AddToCrafting(itemInRange, emptySlot);
        }
    }
    
    if(itemPicked)
    {
        
        itemInRange.visible = false;
        itemInRange.x = 0;
        itemInRange.y = 0;
    }
}

return itemPicked;
