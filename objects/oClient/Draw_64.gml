/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_rectangle(5,5,405, 95, false);

var amount = (hp/maxHp)*100;
draw_healthbar(10, 10, 400, 48, amount, c_black, c_green, c_green, 0, true, true);
draw_set_font(fontItem);
draw_set_halign(fa_center);
draw_text(195, 20, string(amount)+"%");

//draw_WEAPON
if(ds_map_exists(weapon, "sprite")){
	var c = c_gray;
	switch(weapon[? "rank"]){
		case RANK_COMMUN : c = c_green;break;
		case RANK_RARE : c = c_blue;break;
		case RANK_EPIC : c = c_purple;break;
		case RANK_LEGENDARY : c = c_orange;break;
	}
	draw_set_color(c);
	draw_rectangle(7, 52, 45, 90, false);
	draw_set_color(c_black);
	draw_rectangle(9, 54, 43, 88, false);
	draw_sprite_stretched(weapon[? "sprite"], weapon[? "rank"], 10, 55, 32, 32);
	
	if((mouse_x > 10 && mouse_x < 42) && (mouse_y > 55 && mouse_y < 87)){
		var xx = 10;
		var yy = 65 + 34;
		showItemPlayerInformation(xx, yy, weapon, true);
	}

}
//draw helmet
if(ds_map_exists(helmet, "sprite")){
	var c = c_gray;
	switch(helmet[? "rank"]){
		case RANK_COMMUN : c = c_green;break;
		case RANK_RARE : c = c_blue;break;
		case RANK_EPIC : c = c_purple;break;
		case RANK_LEGENDARY : c = c_orange;break;
	}
	draw_set_color(c);
	draw_rectangle(50, 52, 88, 90, false);
	draw_set_color(c_black);
	draw_rectangle(52, 54, 86, 88, false);
	draw_sprite_stretched(helmet[? "sprite"], helmet[? "rank"], 53, 55, 32, 32);
	
	if((mouse_x > 53 && mouse_x < 85) && (mouse_y > 55 && mouse_y < 87)){
		var xx = 53;
		var yy = 65 + 34;
		showItemPlayerInformation(xx, yy, helmet, false);
	}

}

//draw chestplate
if(ds_map_exists(chestplate, "sprite")){
	var c = c_gray;
	switch(chestplate[? "rank"]){
		case RANK_COMMUN : c = c_green;break;
		case RANK_RARE : c = c_blue;break;
		case RANK_EPIC : c = c_purple;break;
		case RANK_LEGENDARY : c = c_orange;break;
	}
	draw_set_color(c);
	draw_rectangle(93, 52, 131, 90, false);
	draw_set_color(c_black);
	draw_rectangle(95, 54, 129, 88, false);
	draw_sprite_stretched(chestplate[? "sprite"], chestplate[? "rank"], 96, 55, 32, 32);
	
	if((mouse_x > 96 && mouse_x < 128) && (mouse_y > 55 && mouse_y < 87)){
		var xx = 96;
		var yy = 65 + 34;
		showItemPlayerInformation(xx, yy, chestplate, false);
	}

}

//draw boots
if(ds_map_exists(boots, "sprite")){
	var c = c_gray;
	switch(boots[? "rank"]){
		case RANK_COMMUN : c = c_green;break;
		case RANK_RARE : c = c_blue;break;
		case RANK_EPIC : c = c_purple;break;
		case RANK_LEGENDARY : c = c_orange;break;
	}
	draw_set_color(c);
	draw_rectangle(136, 52, 174, 90, false);
	draw_set_color(c_black);
	draw_rectangle(138, 54, 172, 88, false);
	draw_sprite_stretched(boots[? "sprite"], boots[? "rank"], 139, 55, 32, 32);
	
	if((mouse_x > 139 && mouse_x < 171) && (mouse_y > 55 && mouse_y < 87)){
		var xx = 133;
		var yy = 65 + 34;
		showItemPlayerInformation(xx, yy, boots, false);
	}

}