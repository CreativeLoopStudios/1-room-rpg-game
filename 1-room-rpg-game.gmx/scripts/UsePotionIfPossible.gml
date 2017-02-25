/// UsePotionIfPossible()
var potionUsed = false;

if(leftHandItem != noone && leftHandItem.object_index == Potion)
{
    if(instance_exists(PlayerLifeGUI))
    {
        if(PlayerLifeGUI.lifes < PlayerLifeGUI.initLife)
        {
            PlayerLifeGUI.lifes += 1;
            potionUsed = true;
            DestroyItemInHand(0);
        }
    }
}
return potionUsed;
