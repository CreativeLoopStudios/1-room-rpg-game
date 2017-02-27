/// PeasantChasingState()
if(instance_exists(chaseObject) && canEnter)
{    
    mp_potential_step_object(chaseObject.x, chaseObject.y, spd, Solid);
    PeasantSetSprite();
    
    if((position_meeting(bbox_right + distanceChase, y, chaseObject)
        or position_meeting(bbox_left - distanceChase, y, chaseObject)
        or position_meeting(x, bbox_bottom + distanceChase, chaseObject)
        or position_meeting(x, bbox_top - distanceChase, chaseObject))
        and IsObjectInFourDirections(chaseObject))
    {
        if(canDoDamage) {
            DoDamageToChaseObject();
        }
        state = PeasantAttackState;
    }
}
