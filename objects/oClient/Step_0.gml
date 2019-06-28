/// @description Insert description here
// You can write your code in this editor

sendRot();

if(keyboard_check_pressed(ord("Z"))){
	sendKey(ord("Z"), 1);
}

if(keyboard_check_pressed(ord("Q"))){
	sendKey(ord("Q"), 1);
}

if(keyboard_check_pressed(ord("S"))){
	sendKey(ord("S"), 1);
}

if(keyboard_check_pressed(ord("D"))){
	sendKey(ord("D"), 1);
}

//========================================================================

if(keyboard_check_released(ord("Z"))){
	sendKey(ord("Z"), 0);
}

if(keyboard_check_released(ord("Q"))){
	sendKey(ord("Q"), 0);
}

if(keyboard_check_released(ord("S"))){
	sendKey(ord("S"), 0);
}

if(keyboard_check_released(ord("D"))){
	sendKey(ord("D"), 0);
}