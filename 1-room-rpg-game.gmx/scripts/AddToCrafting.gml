/// AddToCrafting(sprite_index, item)
var item = argument0;

var picked = false;

if(instance_exists(Inventory))
{
    with(Inventory)
    {
        if(craftSlot[currentCraftSlot] == noone)
        {
            craftSlot[currentCraftSlot] = item.object_index;
            picked = true;
            currentCraftSlot++;
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
