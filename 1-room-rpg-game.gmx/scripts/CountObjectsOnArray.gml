/// CountObjectsOnArray(array)
var arr = argument0;

var count = 0;

for(var i = 0; i < array_length_1d(arr); i++)
{
    if(arr[i] != noone)
    {
        count++;
    }
}

return count;
