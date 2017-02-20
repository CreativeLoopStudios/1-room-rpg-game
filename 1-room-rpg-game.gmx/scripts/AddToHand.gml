/// AddToHand(item, slot)
var item = argument0;
var slot = argument1;

var picked = false;

if(instance_exists(Inventory))
{
    with(Inventory)
    {
        if(CountObjectsOnArray(handSlot) < totalHandSlots)
        {
            if(handSlot[slot] == noone)
            {
                handSlot[slot] = item;
                picked = true;
            }
        }
    }
}

if (picked)
{
    if(slot == 0)
    {
        leftHandItem = item;
    }
    else
    {
        rightHandWeapon = item;
    }
    
    item.visible = false;
    item.x = 0;
    item.y = 0;
}

return picked;
