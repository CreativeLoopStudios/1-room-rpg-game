/// AddToHand(sprite_index, slot)
var object = argument0;
var slot = argument1;

var picked = false;

if(instance_exists(Inventory))
{
    with(Inventory)
    {
        if(array_length_1d(handSlot) < totalHandSlots)
        {
            if(handSlot[slot] == noone)
            {
                handSlot[slot] = object;
                picked = true;
            }
        }
    }
}

return picked;
