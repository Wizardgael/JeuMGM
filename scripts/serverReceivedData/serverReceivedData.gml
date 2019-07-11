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
		case ord("E") : key = KEY_INTERACT;break;
		case ord("A") : key = KEY_SPELL1;break;
	}
	
	if(state == 0) inst.keys[key] = false;
	else inst.keys[key] = true;
	
}else if(cmd == KEY_CMD_INTERACT){
	inst.clientMouseX = buffer_read(buff, buffer_s16);
	inst.clientMouseY = buffer_read(buff, buffer_s16);
	inst.alarm[0] = 1;
}else if(cmd == KEY_ROT){
	inst.image_angle = buffer_read(buff, buffer_s16);
}else if(cmd == NAME_CMD){
	
	var c = buffer_read(buff, buffer_s16);
	
	if(c == IS_KNIGHT){
		c = oKnight;
	}else if(c == IS_WIZARD){
		c = oWizard;
	}
	
	var temp = instance_create_layer(inst.x, inst.y, inst.layer, c);
	temp.image_blend = inst.image_blend;
	temp.sock = inst.sock;
	temp.invArme = inst.invArme;
	temp.invCasque = inst.invCasque;
	temp.invPlastron = inst.invPlastron;
	temp.invBotte = inst.invBotte;
	temp.hp = inst.hp;
	temp.maxHp = inst.maxHp;
	clients[? sock] = temp;
	
	instance_destroy(inst);
	inst = clients[? sock];
	inst.name = buffer_read(buff, buffer_string);
	
}else if(cmd == KEY_MOUSE){
	var xx = buffer_read(buff, buffer_s16);
	var yy = buffer_read(buff, buffer_s16);
	if(position_meeting(xx, yy, oItem)){
		var o = instance_nearest(xx, yy, oItem);
		if(o.isReady){
			var b = buffer_create(32, buffer_grow, 1);
			buffer_seek(b, buffer_seek_start, 0);
			buffer_write(b, buffer_s16, CLIENT_ITEM_SHOW);
			buffer_write(b, buffer_s16,0);
			buffer_write(b, buffer_string, o.name);
			buffer_write(b, buffer_s16, o.type);
			buffer_write(b, buffer_s16, o.x);
			buffer_write(b, buffer_s16, o.y);
			buffer_write(b, buffer_s16, o.rank);
			buffer_write(b, buffer_s16, o.stat);
			buffer_write(b, buffer_string, o.desc);
			network_send_packet(sock, b, buffer_tell(b));
		}else{
			var b = buffer_create(32, buffer_fixed, 1);
			buffer_seek(b, buffer_seek_start, 0);
			buffer_write(b, buffer_s16, CLIENT_ITEM_SHOW);
			buffer_write(b, buffer_s16, 1);
			network_send_packet(sock, b, buffer_tell(b));
		}
	}else{
		var b = buffer_create(32, buffer_fixed, 1);
		buffer_seek(b, buffer_seek_start, 0);
		buffer_write(b, buffer_s16, CLIENT_ITEM_SHOW);
		buffer_write(b, buffer_s16, 1);
		network_send_packet(sock, b, buffer_tell(b));
	}
	
	
}else if(cmd == PING_CMD){
	
}