/// @description Insert description here
// You can write your code in this editor


if(showItem){
	var xx = itemX;
	var yy = itemY;
	
	var color = c_gray;
	switch(itemRank){
		case RANK_COMMUN : color = c_green;break;
		case RANK_RARE : color = c_blue;break;
		case RANK_EPIC : color = c_purple;break;
		case RANK_LEGENDARY : color = c_orange;break;
	}
	
	draw_set_color(c_black);
	draw_rectangle(xx - 129, yy - 81, xx + 32 + 128, yy - 8, 0);
	draw_set_color(color);
	draw_rectangle(xx - 128, yy - 80, xx + 48, yy - 48, 0);
	draw_set_color(c_dkgray);
	draw_rectangle(xx - 128, yy - 47, xx + 32 + 127, yy - 9, 0);
	draw_set_color(c_white);
	draw_set_font(fontItem);
	draw_set_halign(fa_left);
	draw_text(xx - 120, yy - 78, itemName);
	draw_text(xx + 60, yy - 78, "dmg - "+string(itemDmg));
	draw_set_font(fontItemDesc)
	draw_text(xx - 120, yy - 47, itemDesc);
}