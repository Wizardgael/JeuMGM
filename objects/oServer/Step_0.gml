/// @description Insert description here
// You can write your code in this editor

var count = ds_list_size(socketList);

if(count > 0){
	
	global.playerBuffer = playerBuffer;
	
	buffer_seek(playerBuffer, buffer_seek_start, 0);
	
	buffer_write(playerBuffer, buffer_u32, global.playerTotal);//nb de sprite
	
	buffer_write(playerBuffer, buffer_s16, 0);
	buffer_write(playerBuffer, buffer_s16, 0);
	buffer_write(playerBuffer, buffer_s16, 0);
	
	for(var j = 0; j < instance_number(oPlayer); j++){
		var temp = instance_find(oPlayer, j);
		
		buffer_write(global.playerBuffer, buffer_s16, OBJ_PLAYER);
		buffer_write(global.playerBuffer, buffer_s16, temp.x);
	    buffer_write(global.playerBuffer, buffer_s16, temp.y);
	    buffer_write(global.playerBuffer, buffer_s16, temp.sprite_index);
	    buffer_write(global.playerBuffer, buffer_s16, temp.image_index);
	    buffer_write(global.playerBuffer, buffer_s32, temp.image_blend);
		buffer_write(global.playerBuffer, buffer_s32, temp.image_angle);
	    buffer_write(global.playerBuffer, buffer_string, temp.name);	
		
	}
	
	var buffer_size = buffer_tell(playerBuffer);
	
	for(var i = 0; i < count; i++){
		var sock = socketList[| i];
		
		buffer_seek(playerBuffer, buffer_seek_start, 4);
		
		var inst = ds_map_find_value(clients, sock);
		
		buffer_write(playerBuffer, buffer_s16, inst.x);
		buffer_write(playerBuffer, buffer_s16, inst.y);
		
		var c = 0;
		for(var j = 0; j < instance_number(oPlayer); j++){
			var temp = instance_find(oPlayer, j);
			if(temp.sock == sock){
				c = j;	
			}
		}
		buffer_write(playerBuffer, buffer_s16, c);
		
		network_send_packet(sock, playerBuffer, buffer_size);
	}
	
}