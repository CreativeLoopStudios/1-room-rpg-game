/// DropItem(slot, typeOfInventory)
var slot = argument0;
var typeOfInventory = argument1;

if(instance_exists(Inventory))
{
    var targetX = x;
    var targetY = y;
    
    var itemToDrop = noone;
    
    if(typeOfInventory == ITEM_HAND and Inventory.handSlot[slot] != noone)
    {
        Inventory.handSlot[slot] = noone;
        // left hand
        if(slot == 0)
        {
            itemToDrop = leftHandItem;
            leftHandItem = noone;
        }
        else if(slot == 1) // right hand
        {
            itemToDrop = rightHandWeapon;
            rightHandWeapon = noone;
        }
    }
    else if(typeOfInventory == ITEM_CRAFTING and Inventory.craftSlot[slot] != noone)
    {
        with(Inventory)
        {
            itemToDrop = craftSlot[slot];
            craftSlot[slot] = noone;
        }
    }
    
    if(instance_exists(itemToDrop))
    {
        targetY += 32;
        itemToDrop.x = targetX;
        itemToDrop.y = targetY;
        itemToDrop.visible = true;
        audio_play_sound(sndGetItem, 1, false);
    }
}
