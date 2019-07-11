/// @description Insert description here
// You can write your code in this editor

name = "";
sock = -1;

global.playerTotal++;

for(var i = 0; i < 6; i++;)
{
	keys[i] = false;
}

spd = 5;

invArme = ds_map_create();
invCasque = ds_map_create();
invPlastron = ds_map_create();
invBotte = ds_map_create();

hp = -1;
maxHp = -1;
clientMouseX = -1;
clientMouseY = -1;