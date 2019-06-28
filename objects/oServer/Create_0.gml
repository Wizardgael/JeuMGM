/// @description Insert description here
// You can write your code in this editor

global.haveServer = true;

//list des couleurs
color[0] = c_red;
color[1] = c_fuchsia;
color[2] = c_white;
color[3] = c_orange;
color[4] = c_purple;
color[5] = c_yellow;
colorIndex = 0;

global.playerTotal = 0;
broadcastBuffer = buffer_create(32, buffer_fixed, 1);
playerBuffer = buffer_create(16384, buffer_fixed, 1);
clients = ds_map_create();
socketList = ds_list_create();

server = network_create_server(global.serverType, 8000, 32);

if(server < 0){
	
	global.haveServer = false;
	ds_map_destroy(clients);
	ds_list_destroy(socketList);
	buffer_delete(broadcastBuffer);
	buffer_decompress(playerBuffer);
	instance_destroy();
	
}

