/// AddToCrafting(item, slot)
var item = argument0;
var slot = argument1;

var picked = false;

if(instance_exists(Inventory))
{
    with(Inventory)
    {
        if(array_length_1d(craftSlot) < totalCraftingSlots)
        {
            if(craftSlot[slot] == noone)
            {
                craftSlot[slot] = item;
                picked = true;
            }
        }
    }
}

if (picked) 
{
    item.visible = false;
    item.x = 0;
    item.y = 0;
}

return picked;
