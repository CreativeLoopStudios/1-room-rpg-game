/// AddToCrafting()
var spriteIndex = argument0;

if(instance_exists(Inventory))
{
    for(var i = 0; i < Inventory.totalCraftingSlots; i++)
    {
        if(Inventory.craftingSlot[i] == noone){
            Inventory.craftingSlot[i] = spriteIndex;
            break;
        }
    }
}
