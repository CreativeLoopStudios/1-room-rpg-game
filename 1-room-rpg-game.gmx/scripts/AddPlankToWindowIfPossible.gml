//AddPlankToWindowIfPossible()
var plankAdded = false;

if(leftHandItem != noone and leftHandItem.object_index == PlankWithNails)
{
    var inRange = IsInRange(30, RoomItem);
    
    if(inRange != noone and inRange.object_index == Window)
    { 
        with(inRange) {
            plankAdded = AddPlank();
        }
    }
}
return plankAdded;
