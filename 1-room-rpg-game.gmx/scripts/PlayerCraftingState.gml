/// PlayerCraftingState()
if(crafting)
{
    switch(direction)
    {
        case 0:
            sprite_index = sPlayerRight;
            break;
        case 180:
            sprite_index = sPlayerLeft;
            break;
        case 90:
            sprite_index = sPlayerBack;
            break;
        case 270:
            sprite_index = sPlayerFront;
            break;
    }

    alarm[0] = 0.5 * room_speed;
    crafting = false;
}
