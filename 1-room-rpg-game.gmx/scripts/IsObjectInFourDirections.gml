/// IsObjectInFourDirections(object)
var object = argument0;

var directionOfPlayer = floor(point_direction(x, y, object.x, object.y));

if(directionOfPlayer == 0
    or directionOfPlayer == 180
    or directionOfPlayer == 90
    or directionOfPlayer == 270)
{
    return true;
}

return false;
