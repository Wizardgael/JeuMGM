/// @description Insert description here
// You can write your code in this editor

if(t*room_speed > 70){

	if(temp == 10){
		ec *= -1;
		temp = 0;
	}

	dir += ec;

	temp++;
	t = 0;
}else{
	t++;
}