/// DoDamageToChaseObject()

//saveLastSprite
lastSprite = sprite_index;

//change Sprite
var directionOfPlayer = floor(point_direction(x, y, chaseObject.x, chaseObject.y));

if(directionOfPlayer >= 328 or directionOfPlayer <= 32)
{
    sprite_index = asset_get_index(type + "AtckRight");;
}
else if(directionOfPlayer >= 148 and directionOfPlayer <= 212)
{
    sprite_index = asset_get_index(type + "AtckLeft");
}
else if(directionOfPlayer >= 58 and directionOfPlayer <= 122)
{
    sprite_index = asset_get_index(type + "AtckBack");
}
else if(directionOfPlayer >= 238 and directionOfPlayer <= 302)
{
    sprite_index = asset_get_index(type + "AtckFront");;
}

image_speed = animAtckSpd;

//damage
if(chaseObject == Player)
{
    with(PlayerLifeGUI)
    {
        lifes -= 1;
        audio_play_sound(sndHitOnPlayer, 1, false);
    }
}
else if(chaseObject == MonsterTable)
{
    with(FrankLifeGUI)
    {
        //lifes -= 1;
        audio_play_sound(sndHitOnPlayer, 1, false);
    }
}

canDoDamage = false;

alarm[0] = 0.9 * room_speed;

