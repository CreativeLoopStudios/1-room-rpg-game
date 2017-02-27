/// PeasantAttackState()
if(instance_exists(chaseObject))
{
    
    //PeasantSetSprite();
    if(canDoDamage) {
        DoDamageToChaseObject();
    }

    if(
        not(
            position_meeting(bbox_right + distanceChase, y, chaseObject)
            or position_meeting(bbox_left - distanceChase, y, chaseObject)
            or position_meeting(x, bbox_bottom + distanceChase, chaseObject)
            or position_meeting(x, bbox_top - distanceChase, chaseObject)
        )
    )
    // when the player vanishes from the enemy vision
    /*if(not(place_meeting(x + 1, y, chaseObject)
        or place_meeting(x - 1, y, chaseObject)
        or place_meeting(x, y + 1, chaseObject)
        or place_meeting(x, y - 1, chaseObject)))*/
    {   
        state = PeasantChasingState;
    }
}
