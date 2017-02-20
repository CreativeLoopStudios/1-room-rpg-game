/// AddToCrafting(sprite_index)
var object = argument0;
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
                craftSlot[slot] = object;
                picked = true;
            }
        }
    }
}

return picked;
