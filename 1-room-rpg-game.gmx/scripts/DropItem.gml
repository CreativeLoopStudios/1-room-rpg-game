/// DropItem(slot, typeOfInventory)
var slot = argument0;
var typeOfInventory = argument1;

if(instance_exists(Inventory))
{
    if(typeOfInventory == ITEM_HAND)
    {
        Inventory.handSlot[slot] = noone;
        var itemToDrop = noone;
        // left hand
        if(slot == 0)
        {
            itemToDrop = leftHandItem;
        }
        else if(slot == 1) // right hand
        {
            itemToDrop = rightHandWeapon;
        }
        
        // calculate where to drop based on direction
        var targetX = x;
        var targetY = y;
        
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
        
        itemToDrop.x = targetX;
        itemToDrop.y = targetY;
        itemToDrop.visible = true;
    }
    else if(typeOfInventory == ITEM_CRAFTING)
    {
        Inventory.craftSlot[slot] = noone;
    }
}
