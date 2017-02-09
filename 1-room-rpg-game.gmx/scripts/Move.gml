///Move(hspd, vspd, object)
var hspd = argument0;
var vspd = argument1;
var object = argument2;

if (place_meeting(x + hspd, y, object) == true)
{
    while(!place_meeting(x + sign(hspd), y, object))
    {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;

if (place_meeting(x, y + vspd, object) == true)
{
    while(!place_meeting(x, y + sign(vspd), object))
    {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;
