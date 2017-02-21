/// DirectionMoveBounce(collision_object)
var CollisionObject = argument0;

// Horizontal Collisions
if(place_meeting(x + hspd, y, CollisionObject))
{
    while (!place_meeting(x + sign(hspd), y, CollisionObject))
    {
        x += sign(hspd);
    }
    hspd = -(hspd / 2);
}
x += hspd;

// Vertical Collisions
if(place_meeting(x, y + vspd, CollisionObject))
{
    while (!place_meeting(x, y + sign(vspd), CollisionObject))
    {
        y += sign(vspd);
    }
    vspd = -(vspd / 2);
    if (abs(vspd) < 2) vspd = 0;
}
y += vspd;
