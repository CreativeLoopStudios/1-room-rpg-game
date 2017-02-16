/// AddToHand(sprite_index, slot)
var spriteIndex = argument0;
var slot = argument1;

var picked = false;

if(instance_exists(Inventory))
{
    with(Inventory)
    {
        if(handSlot[slot] == noone)
        {
            handSlot[slot] = spriteIndex;
            picked = true;
        }
    }
}

return picked;
