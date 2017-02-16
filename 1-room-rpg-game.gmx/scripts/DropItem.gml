/// DropItem(slot, typeOfInventory)
var slot = argument0;
var typeOfInventory = argument1;

if(instance_exists(Inventory))
{
    var targetX = x;
    var targetY = y;
    
    var itemToDrop = noone;
        
    if(typeOfInventory == ITEM_HAND)
    {
        Inventory.handSlot[slot] = noone;
        // left hand
        if(slot == 0)
        {
            itemToDrop = leftHandItem;
        }
        else if(slot == 1) // right hand
        {
            itemToDrop = rightHandWeapon;
        }
    }
    else if(typeOfInventory == ITEM_CRAFTING)
    {
        with(Inventory)
        {
            if(currentCraftSlot > 0)
            {
                itemToDrop = craftSlot[currentCraftSlot - 1];
                craftSlot[currentCraftSlot - 1] = noone;
                currentCraftSlot -= 1;
            }
        }
    }
    
    // calculate where to drop based on direction
    switch(direction)
    {
        case 0:
            targetX += 32;
            break;
        case 180:
            targetX -= 32;
            break;
        case 90:
            targetY -= 32;
            break;
        case 270:
            targetY += 32;
            break;
    }
    
    if(instance_exists(itemToDrop))
    {
        itemToDrop.x = targetX;
        itemToDrop.y = targetY;
        itemToDrop.visible = true;
    }
}
