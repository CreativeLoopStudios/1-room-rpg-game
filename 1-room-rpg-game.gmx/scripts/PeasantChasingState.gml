/// PeasantChasingState()
if(instance_exists(chaseObject) && canEnter)
{    
    mp_potential_step_object(chaseObject.x, chaseObject.y, spd, Solid);
    PeasantSetSprite();
    
    if((position_meeting(bbox_right + 5, y, chaseObject)
        or position_meeting(bbox_left - 5, y, chaseObject)
        or position_meeting(x, bbox_bottom + 5, chaseObject)
        or position_meeting(x, bbox_top - 5, chaseObject))
        and IsObjectInFourDirections(chaseObject))
    {
        show_debug_message("atck");
        state = PeasantAttackState;
    }
}
