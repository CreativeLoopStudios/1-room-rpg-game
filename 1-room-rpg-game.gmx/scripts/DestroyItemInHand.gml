/// DestroyItemInHand(slot)
var slot = argument0;

with(Inventory)
{
    var item = handSlot[slot];
    with(item)
    {
        instance_destroy();
    }
    
    handSlot[slot] = noone;
}

if(slot == 0)
{
    leftHandItem = noone;
}
else
{
    rightHandWeapon = noone;
}
