/// AddToCrafting(sprite_index)
var spriteIndex = argument0;

var picked = false;

if(instance_exists(Inventory))
{
    with(Inventory)
    {
        if(craftSlot[currentCraftSlot] == noone)
        {
            craftSlot[currentCraftSlot] = spriteIndex;
            picked = true;
            currentCraftSlot++;
        }
    }
}

return picked;
