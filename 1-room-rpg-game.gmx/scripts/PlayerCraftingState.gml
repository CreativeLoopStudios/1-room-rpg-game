/// PlayerCraftingState()
if(crafting)
{
    sprite_index = sPlayerCrafting;
    image_speed = 0.2;

    alarm[0] = 0.5 * room_speed;
    crafting = false;
}
