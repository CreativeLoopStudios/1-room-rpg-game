/// AddToHand(item, slot)
var item = argument0;
var slot = argument1;

var picked = false;

if(instance_exists(Inventory))
{
    DropItem(slot, ITEM_HAND);
    with(Inventory)
    {
        handSlot[slot] = item;
        picked = true;
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
