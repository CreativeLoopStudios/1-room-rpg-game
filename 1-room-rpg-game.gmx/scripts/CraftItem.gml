/// CraftItem()
if(instance_exists(GUI) and instance_exists(Inventory))
{
    if(GUI.craftingOk)
    {
        switch(Inventory.itemToCraft)
        {
            case CRAFT_PLANK_WITH_NAILS:
                leftHandItem = instance_create(0, 0, PlankWithNails);
                leftHandItem.visible = false;
                
                AddToHand(leftHandItem.object_index, 0);
                
                CleanCraftInventory();
                break;
        }
    }
}
