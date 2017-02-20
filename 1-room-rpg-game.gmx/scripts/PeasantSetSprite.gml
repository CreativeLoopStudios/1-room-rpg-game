///PeasantSetSprite

var xDiff = x - xprevious;
var yDiff = y - yprevious;
var xBigger = abs(xDiff) - abs(yDiff);

if(xDiff > 0 && xBigger)
{
    sprite_index = sPeasantRight;
}
else if(xDiff < 0 && xBigger)
{
    sprite_index = sPeasantLeft;
}
else if(yDiff > 0 && !xBigger)
{
    sprite_index = sPeasantFront;
}
else if(yDiff < 0 && !xBigger)
{
    sprite_index = sPeasantBack;
}


image_speed = animSpd;
