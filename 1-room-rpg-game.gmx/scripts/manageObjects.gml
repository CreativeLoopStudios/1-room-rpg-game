var inv = Inventory;

for(i = 0; i < global.totalSlots; i++){
    var item = global.slot[i];
    if(item >= 0){
        draw_sprite(item.sprite_index, 0, inv.coordX[i]+8, inv.coordY[i]+8);
        item = noone;
    }
}
