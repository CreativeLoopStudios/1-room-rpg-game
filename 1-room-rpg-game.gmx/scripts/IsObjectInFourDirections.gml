/// IsObjectInFourDirections(object)
var object = argument0;

var directionOfObject = floor(point_direction(x, y, object.x, object.y));

if (
    // right
    (directionOfObject >= 328 or directionOfObject <= 32)
    // left
    or (directionOfObject >= 148 and directionOfObject <= 212)
    // back
    or (directionOfObject >= 58 and directionOfObject <= 122)
    // front
    or (directionOfObject >= 238 and directionOfObject <= 302)
)
{
    return true;
}

return false;
