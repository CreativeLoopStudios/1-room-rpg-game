inv = Inventory;
var toName = argument0; //item(axe, planks..)

for(i = 0; i < inv.totalSlots; i++){
    if(global.slot[i] == "noOne"){
        global.slot[i] = toName;
        AddList(toName);
        break;
    }
}
