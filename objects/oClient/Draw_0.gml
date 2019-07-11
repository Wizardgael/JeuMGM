/// @description Insert description here
// You can write your code in this editor

x = clientx;
y = clienty;


var index = 0;
var xx, yy, sp, spindex, col, rot;

for(var i = 0; i < sprites; i++){
	
	var type = allSprite[| index++];
	
	if(type == OBJ_PLAYER){
		// SI JOUEUR
		var color = c_white;
		if(allSprite[| index++] == 1){
			color = c_red;	
		}

		xx = allSprite[| index++];
		yy = allSprite[| index++];
		sp = allSprite[| index++];
		spindex = allSprite[| index++];
		col = allSprite[| index++];
		rot = allSprite[| index++];
		name = allSprite[| index++];
	
		//draw_set_color(c_black);
		//draw_rectangle(x - 32, y - 50, x + 32, y - 34, false);
		draw_set_color(color);
		draw_set_halign(fa_center);
		draw_set_font(fontNom);
		draw_text(xx, yy - 45, name);
		draw_sprite_ext(sp, spindex, xx, yy, 1,1,rot, col,1);
		draw_set_color(c_white);
		
	}else if(type == OBJ_ITEM){
		
		xx = allSprite[| index++];
		yy = allSprite[| index++];
		sp = allSprite[| index++];
		spindex = allSprite[| index++];
		dir = allSprite[| index++];
		name = allSprite[| index++];
		rank = allSprite[| index++];
		dmg = allSprite[| index++];
		
		draw_sprite_ext(sp, spindex, xx, yy + dir, 1,1,0, c_white,1);
	}
	
	
}

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
	if(itemType == ITEM_TYPE_SWORD){
		draw_text(xx + 60, yy - 78, "dmg - "+string(itemDmg));
	}else{
		draw_text(xx + 60, yy - 78, "def - "+string(itemDmg));
	}
	draw_set_font(fontItemDesc)
	draw_text(xx - 120, yy - 47, itemDesc);
}