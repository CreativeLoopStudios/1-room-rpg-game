var obj = argument0; //item(axe, planks..)

for(i = 0; i < global.totalSlots; i++){
    if(global.slot[i] == noone){
        global.slot[i] = obj;
        break;
    }
}
