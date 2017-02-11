var cellWidth = argument0;
var cellHeight = argument1;

for(i = 0; i < totalSlots; i++){
    if(global.slot[i] == "axe"){
        draw_sprite(sAxe, 0, coordX[i]+8, coordY[i]+8);
        draw_set_color(c_black);//draw number inside box
        draw_text(coordX[i]+3, coordY[i]+3, string(global.axe));
    }
}
