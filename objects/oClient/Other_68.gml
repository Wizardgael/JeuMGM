/// @description Insert description here
// You can write your code in this editor

var eventid = async_load[? "id"];

if(client == eventid){
	
	if(global.NetworkState = NETWORK_PLAY){
	
		var buff = async_load[? "buffer"];
		
		sprites = buffer_read(buff, buffer_u32);
		clientx = buffer_read(buff,buffer_s16);     //x
		clienty = buffer_read(buff,buffer_s16);     //y
		
		ds_list_clear(allSprite);
		for(var i = 0; i < sprites; i++){
			var type = buffer_read(buff, buffer_s16);
			ds_list_add(allSprite, type);
			if(type == OBJ_PLAYER){
				ds_list_add(allSprite, buffer_read(buff, buffer_s16));//x
				ds_list_add(allSprite, buffer_read(buff, buffer_s16));//y	
				ds_list_add(allSprite, buffer_read(buff, buffer_s16));//sprite_index	
				ds_list_add(allSprite, buffer_read(buff, buffer_s16));//image_index
				ds_list_add(allSprite, buffer_read(buff, buffer_s32));//image_blend
				ds_list_add(allSprite, buffer_read(buff, buffer_s32));//image_angle
				ds_list_add(allSprite, buffer_read(buff, buffer_string));//playerName
			}
		}
		
	}
}