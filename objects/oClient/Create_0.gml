/// @description Insert description here
// You can write your code in this editor
clientx = 0;
clienty = 0;

name = global.serverName;

buff = buffer_create(256, buffer_grow, 1);

client = network_create_socket(global.serverType);
global.client = client;

global.NetworkState = NETWORK_PLAY;

allSprite = ds_list_create();
sprites = 0;
var err = network_connect(client, global.ip, 12975);

if(err != 0){
	
	show_message("Erreur de connection");
	game_restart();
	
}
sendName(name);
alarm[0] = room_speed * 2;

showItem = false;
itemName = "";
itemDmg = -1;
itemRank = -1;
itemDesc = "";
itemX = 0;
itemY = 0;