///PeasantSetSprite
var xDiff = x - xprevious;
var yDiff = y - yprevious;
var xBigger = abs(xDiff) - abs(yDiff);

if(xDiff > 0 && xBigger)
{
    sprite_index = asset_get_index(type + "Right");
}
else if(xDiff < 0 && xBigger)
{
    sprite_index = asset_get_index(type + "Left");
}
else if(yDiff > 0 && !xBigger)
{
    sprite_index = asset_get_index(type + "Front");
}
else if(yDiff < 0 && !xBigger)
{
    sprite_index = asset_get_index(type + "Back");
}
else if (lastSprite != noone)
{
    sprite_index = lastSprite;
}

image_speed = animSpd;

