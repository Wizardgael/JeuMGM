/// @description Insert description here
// You can write your code in this editor

x = clientx;
y = clienty;

//var view = view_camera[0];
//var camW = camera_get_view_width(view);
//var camH = camera_get_view_height(view);
//var newX = clamp(x - (camW/2), 0, room_width);
//var newY = clamp(y - (camH/2), 0, room_height);
//camera_set_view_pos(view, newX, newY);


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
	}	
	
	
}