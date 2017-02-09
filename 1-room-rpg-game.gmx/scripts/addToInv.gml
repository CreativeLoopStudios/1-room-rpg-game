inv = obj_inventory;
var toName = argument0; //item(axe, planks..)

for(i = 0; i < inv.totalSlots; i++){
    if(global.slot[i] == "noOne"){
        global.slot[i] = toName;
        addList(toName);
        break;
    }
}
