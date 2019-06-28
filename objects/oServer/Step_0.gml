/// @description Insert description here
// You can write your code in this editor

var count = ds_list_size(socketList);

if(count > 0){
	
	global.playerBuffer = playerBuffer;
	
	buffer_seek(playerBuffer, buffer_seek_start, 0);
	
	buffer_write(playerBuffer, buffer_u32, global.playerTotal);//nb de sprite
	
	buffer_write(global.playerBuffer, buffer_s16, 0);
	buffer_write(global.playerBuffer, buffer_s16, 0);
	
	with(oPlayer){
		buffer_write(global.playerBuffer, buffer_s16, x);
	    buffer_write(global.playerBuffer, buffer_s16, y);
	    buffer_write(global.playerBuffer, buffer_s16, sprite_index);
	    buffer_write(global.playerBuffer, buffer_s16, image_index);
	    buffer_write(global.playerBuffer, buffer_s32, image_blend);
		buffer_write(global.playerBuffer, buffer_s32, image_angle);
	    buffer_write(global.playerBuffer, buffer_string, name);	
	}
	
	var buffer_size = buffer_tell(playerBuffer);
	
	for(var i = 0; i < count; i++){
		var sock = socketList[| i];
		
		buffer_seek(playerBuffer, buffer_seek_start, 4);
		
		var inst = ds_map_find_value(clients, sock);
		buffer_write(global.playerBuffer, buffer_s16, inst.x);
		buffer_write(global.playerBuffer, buffer_s16, inst.y);
		
		network_send_packet(sock, playerBuffer, buffer_size);
	}
	
}