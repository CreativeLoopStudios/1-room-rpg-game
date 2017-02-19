/// CleanCraftInventory()
with(Inventory)
{
    currentCraftSlot = 0;
    
    for(var i = 0; i < totalCraftingSlots; i++)
    {
        craftSlot[i] = noone;
    }
}
