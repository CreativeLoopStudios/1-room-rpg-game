//AddFrankPartIfPossible()
var frankPartAdded = false;

if(leftHandItem != noone && object_is_ancestor(leftHandItem.object_index, FrankPart))
{
    var inRange = IsInRange(50, MonsterTable);
    
    if(inRange != noone)
    { 
        with(FrankBody) {
            frankPartAdded = AddFrankPart(other.leftHandItem);
        }
        
        if(frankPartAdded) {
            leftHandItem = noone;
            with(Inventory) {
                handSlot[0] = noone;
            }
        }
    }
}
return frankPartAdded;
