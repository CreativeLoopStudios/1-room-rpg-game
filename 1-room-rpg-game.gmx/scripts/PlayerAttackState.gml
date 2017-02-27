/// PlayerAttackState()
// touching an enemy

// Attack Hitbox
var hitbox = noone;

// create hitbox
if(direction == 0 || direction == 180)
{
    hitbox = instance_create(x, y, AttackLeftRightHitbox);
    if(direction == 0)
    {
        sprite_index = sPlayerAttackHammerRight;
    }
    else
    {
        sprite_index = sPlayerAttackHammerLeft;
    }
}
else if(direction == 90)
{
    hitbox = instance_create(x, y, AttackUpHitbox);
    sprite_index = sPlayerAttackHammerBack;
}
else if(direction == 270)
{
    hitbox = instance_create(x, y, AttackDownHitbox);
    sprite_index = sPlayerAttackHammerFront;
}

if(hitbox)
{
    var weaponDamage = rightHandWeapon.damage;
    var playerDirection = direction;
    with(hitbox)
    {
        if(other.direction == 180) image_xscale = -1;
        
        // if hit an object
        var peasantHit = instance_place(x, y, Peasant);
        with(peasantHit)
        {
            if(state == PeasantChasingState
                or state == PeasantAttackState)
            {
                directionOfHit = playerDirection;
                life -= weaponDamage;
                hit = true;
                audio_play_sound(sndHit, 1, false);
                state = PeasantHitState;
                chaseObject = Player;
            }
        }
    }
}
