/// @function		connectDisconnectClient();
/// @description	Called on a connect or disconnect of a client

// get connect or disconnect (1=connect)
var t = async_load[? "type"];
// Get the NEW socket ID, or the socket that's disconnecting
var sock = async_load[? "socket"];
// Get the IP that the socket comes from
var ip = async_load[? "ip"];

if(t == network_type_connect){
	
	//add clients to connected clients
	ds_list_add(socketList, sock);
	//create a new player and pick a random color
	var inst = instance_create_layer(100,100, "Instances", oPlayer);
	inst.image_blend = color[colorIndex];
	inst.sock = sock;
	colorIndex++;
	
	clients[? sock] = inst;
	
}else{

	var inst = clients[? sock];
	
	ds_map_delete(clients, sock);
	instance_destroy(inst, true);
	
	var index = ds_list_find_index(socketList, sock);
	ds_list_delete(socketList, index);
	
}