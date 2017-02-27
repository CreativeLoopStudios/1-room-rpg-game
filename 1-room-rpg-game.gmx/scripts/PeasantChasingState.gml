/// PeasantChasingState()
if(instance_exists(chaseObject) && canEnter)
{    
    mp_potential_step_object(chaseObject.x, chaseObject.y, spd, Solid);
    PeasantSetSprite();
    
    if((position_meeting(bbox_right + 1, y, chaseObject)
        or position_meeting(bbox_left - 1, y, chaseObject)
        or position_meeting(x, bbox_bottom + 1, chaseObject)
        or position_meeting(x, bbox_top - 1, chaseObject))
        and IsObjectInFourDirections(chaseObject))
    {
        state = PeasantAttackState;
    }
}
