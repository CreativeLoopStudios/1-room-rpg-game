//AddPlankToWindowIfPossible()
var plankAdded = false;

if(leftHandItem != noone && leftHandItem.object_index == PlankWithNails)
{
    var inRange = IsInRange(30, Window);
    
    if(inRange != noone)
    { 
        with(inRange) {
            plankAdded = AddPlank();
        }
        if(plankAdded) DestroyItemInHand(0);
    }
}
return plankAdded;
