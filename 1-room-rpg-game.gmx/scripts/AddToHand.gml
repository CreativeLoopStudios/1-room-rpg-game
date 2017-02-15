/// AddToHand()
var spriteIndex = argument0;

if(instance_exists(Inventory))
{
    for(var i = 0; i < Inventory.totalHandSlots; i++)
    {
        if(Inventory.handSlot[i] == noone){
            Inventory.handSlot[i] = spriteIndex;
            break;
        }
    }
}
