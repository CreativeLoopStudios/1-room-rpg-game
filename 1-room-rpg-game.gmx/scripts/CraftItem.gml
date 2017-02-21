/// CraftItem()
if(instance_exists(GUI) and instance_exists(Inventory))
{
    if(GUI.craftingOk)
    {
        switch(Inventory.itemToCraft)
        {
            case CRAFT_PLANK_WITH_NAILS:
                AddToHand(instance_create(0, 0, PlankWithNails), 0);
                CleanCraftInventory();
                break;
        }
    }
}
