/// PlayerCraftingState()
if(crafting)
{
    switch(direction)
    {
        case 0:
            sprite_index = sPlayerCrafting;
            break;
        case 180:
            sprite_index = sPlayerCrafting;
            break;
        case 90:
            sprite_index = sPlayerCrafting;
            break;
        case 270:
            sprite_index = sPlayerCrafting;
            break;
    }

    alarm[0] = 1 * room_speed;
    crafting = false;
}
