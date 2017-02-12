/// PlayerAttackState()
// touching an enemy

// Attack Hitbox
// if you need to test when the animation of the attack are actually attacking
/*if(image_index >= 1 and image_index <= 3)
{
}*/

var hitbox = noone;

// create hitbox
if(direction == 0 or direction == 180)
{
    hitbox = instance_create(x, y, AttackLeftRightHitbox);
}
else if(direction == 90)
{
    hitbox = instance_create(x, y, AttackUpHitbox);
}
else if(direction == 270)
{
    hitbox = instance_create(x, y, AttackDownHitbox);
}

if(hitbox)
{
    with(hitbox)
    {
        if(other.direction == 180) image_xscale = -1;
        
        // if hit an object
        var peasantHit = instance_place(x, y, Peasant);
        peasantHit.health -= other.rightHandWeapon.damage;
        peasantHit.state = PeasantHitState;
    }
}

state = PlayerMoveState;
