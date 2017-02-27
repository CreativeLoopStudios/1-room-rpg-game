/// FadeToRoom(room)
var nextRoom = argument0;

with(instance_create(0, 0, Fade))
{
    currentRoom = nextRoom;
}
