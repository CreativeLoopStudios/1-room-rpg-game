//AddPlankToWindowIfPossible()
var plankAdded = false;

if(leftHandItem != noone && leftHandItem.object_index == PlankWithNails)
{
    var inRange = IsInRange(30, RoomItem);
    
    if(inRange != noone && inRange.object_index == Window)
    { 
        with(inRange) {
            plankAdded = AddPlank();
        }
    }
}
return plankAdded;
