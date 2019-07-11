var xx = argument0;
var yy = argument1;
var list = argument2;
var isWeapon = argument3;

var color = c_gray;
switch(list[? "rank"]){
	case RANK_COMMUN : color = c_green;break;
	case RANK_RARE : color = c_blue;break;
	case RANK_EPIC : color = c_purple;break;
	case RANK_LEGENDARY : color = c_orange;break;
}

draw_set_color(c_red);
draw_rectangle(xx - 2, yy - 2, xx + 291, yy + 75, false);
draw_set_color(c_black);
draw_rectangle(xx, yy, xx + 289, yy + 73, false);
draw_set_color(color);
draw_rectangle(xx, yy, xx + 176, yy + 38, false);
draw_set_color(c_dkgray);
draw_rectangle(xx, yy + 39, xx + 289, yy + 73, false);
draw_set_color(c_white);
draw_set_font(fontItem);
draw_set_halign(fa_left);
draw_text(xx + 4, yy + 2, list[? "name"]);
if(isWeapon){
	draw_text(xx +188, yy + 2, "dmg - "+string(list[? "stat"]));
}else{
	draw_text(xx +188, yy + 2, "def - "+string(list[? "stat"]));
}
draw_set_font(fontItemDesc)
draw_text(xx + 8, yy + 39, list[? "desc"]);