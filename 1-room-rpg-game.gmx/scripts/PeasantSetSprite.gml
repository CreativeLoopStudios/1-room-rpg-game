///PeasantSetSprite

var xDiff = x - xprevious;
var yDiff = y - yprevious;
var xBigger = abs(xDiff) - abs(yDiff);

if(xDiff > 0 && xBigger)
{
    sprite_index = sVillager1Right;
}
else if(xDiff < 0 && xBigger)
{
    sprite_index = sVillager1Left;
}
else if(yDiff > 0 && !xBigger)
{
    sprite_index = sVillager1Front;
}
else if(yDiff < 0 && !xBigger)
{
    sprite_index = sVillager1Back;
}


image_speed = animSpd;
