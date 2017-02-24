/// IsObjectInFourDirections(object)
var object = argument0;

var directionOfPlayer = floor(point_direction(x, y, object.x, object.y));

if (
    // right
    (directionOfPlayer >= 328 or directionOfPlayer <= 32)
    // left
    or (directionOfPlayer >= 148 and directionOfPlayer <= 212)
    // back
    or (directionOfPlayer >= 58 and directionOfPlayer <= 122)
    // front
    or (directionOfPlayer >= 238 and directionOfPlayer <= 302)
)
{
    return true;
}

return false;
