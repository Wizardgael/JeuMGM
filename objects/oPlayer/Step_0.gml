/// @description Insert description here
// You can write your code in this editor

if(keys[RIGHT_KEY] && !place_meeting(x + spd, y, oParentBlock)){
	x += spd;
}

if(keys[LEFT_KEY] && !place_meeting(x - spd, y, oParentBlock)){
	x -= spd;	
}

if(keys[UP_KEY] && !place_meeting(x, y - spd, oParentBlock)){
	y -= spd;	
}

if(keys[DOWN_KEY] && !place_meeting(x, y+spd, oParentBlock)){
	y += spd;	
}

if(keys[KEY_INTERACT]){
	keys[KEY_INTERACT] = false;
}

if(keys[KEY_SPELL1]){
	keys[KEY_SPELL1] = false;
	instance_create_layer(x,y,"Items", oSword);
}