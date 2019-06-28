/// @description Insert description here
// You can write your code in this editor

x = clientx;
y = clienty;

var index = 0;
var xx, yy, sp, spindex, col, rot;

for(var i = 0; i < sprites; i++){
	
	xx = allSprite[| index++];
	yy = allSprite[| index++];
	sp = allSprite[| index++];
	spindex = allSprite[| index++];
	col = allSprite[| index++];
	rot = allSprite[| index++];
	name = allSprite[| index++];
	
	draw_sprite_ext(sp, spindex, xx, yy, 1,1,rot, col,1);
}