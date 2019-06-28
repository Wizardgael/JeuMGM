/// @function		serverReceivedData();
/// @description	Read incoming data to the server from a connected socket

// get the buffer the data resides in
var buff = async_load[? "buffer"];
// read ythe command 
var cmd = buffer_read(buff, buffer_s16);
// Get the socket ID - this is the CLIENT socket ID. We can use this as a "key" for this client
var sock = async_load[? "id"];
// Look up the client details
var inst = clients[? sock];

if(cmd == KEY_CMD){
	
	var key = buffer_read(buff, buffer_s16);
	var state = buffer_read(buff, buffer_s16);
	
	switch(key){
		case ord("Z") : key = UP_KEY;break;
		case ord("S") : key = DOWN_KEY;break;
		case ord("Q") : key = LEFT_KEY;break;
		case ord("D") : key = RIGHT_KEY;break;
	}
	
	if(state == 0) inst.keys[key] = false;
	else inst.keys[key] = true;
	
}else if(cmd == KEY_ROT){
	inst.image_angle = buffer_read(buff, buffer_s16);
}else if(cmd == NAME_CMD){
	inst.name = buffer_read(buff, buffer_string);
}else if(cmd == PING_CMD){
	
}