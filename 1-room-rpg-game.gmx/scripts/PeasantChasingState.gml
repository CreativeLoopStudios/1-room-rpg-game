/// PeasantChasingState()
if(instance_exists(chaseObject) && canEnter)
{    
    mp_potential_step_object(chaseObject.x, chaseObject.y, spd, Solid);
    PeasantSetSprite();
    
    if((place_meeting(bbox_right + 3, y, chaseObject)
        or place_meeting(bbox_left - 3, y, chaseObject)
        or place_meeting(x, bbox_bottom + 3, chaseObject)
        or place_meeting(x, bbox_top - 3, chaseObject))
        and IsObjectInFourDirections(chaseObject))
    {
        state = PeasantAttackState;
    }
}
