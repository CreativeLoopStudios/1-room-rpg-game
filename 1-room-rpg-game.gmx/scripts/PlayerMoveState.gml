/// PlayerMoveState()

// check if up or down key pressed
if(up or down)
{
    vspd += (down - up) * acc;
    
    if (vspd > spd) vspd = spd;
    if (vspd < -spd) vspd = -spd;
}

if (right or left)
{
    hspd += (right - left) * acc;
    
    if (hspd > spd) hspd = spd;
    if (hspd < -spd) hspd = -spd;
}

// apply friction when all keys are released
if((!up and !down) or (!right and !left))
{
    ApplyFriction(0.3);
}

PlayerSetSprite();

// Move if needed
Move(hspd, vspd, Solid);

// attack state
if(space and rightHandWeapon and attackTimer == 0)
{
    state = PlayerAttackState;
}

// get item on ground
if(e_key)
{
    PlayerPerformAction();
}

// drop left hand item
if(one_key and leftHandItem)
{
    DropItem(0, ITEM_HAND);
}

// drop right hand item
if(two_key and rightHandWeapon)
{
    DropItem(1, ITEM_HAND);
}

// drop crafting itens
if(three_key)
{
    DropItem(0, ITEM_CRAFTING);
}

if(four_key)
{
    DropItem(1, ITEM_CRAFTING)
}

// craft item
if(c_key)
{
    CraftItem();
}
