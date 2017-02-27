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
        if(plankAdded)
        {
            DestroyItemInHand(0);
            audio_play_sound(sndWindowBuild, 1, false);
        }
    }
}
return plankAdded;
