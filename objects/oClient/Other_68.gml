/// @description Insert description here
// You can write your code in this editor

var eventid = async_load[? "id"];

if(client == eventid){
	
	if(global.NetworkState = NETWORK_PLAY){
	
		var buff = async_load[? "buffer"];
		
		var type = buffer_read(buff, buffer_s16);
		
		if(type == CLIENT_STEP_SHOW){
		
			sprites = buffer_read(buff, buffer_u32);
			clientx = buffer_read(buff,buffer_s16);     //x
			clienty = buffer_read(buff,buffer_s16);     //y
			index = buffer_read(buff,buffer_s16);
		
			ds_list_clear(allSprite);
		
			var nbPlayer = 0;
		
			for(var i = 0; i < sprites; i++){
				var type = buffer_read(buff, buffer_s16);
				ds_list_add(allSprite, type);
			
				if(type == OBJ_PLAYER){
					if(nbPlayer == index){
						ds_list_add(allSprite, 1);
					}else{
						ds_list_add(allSprite, 0);
					}
					ds_list_add(allSprite, buffer_read(buff, buffer_s16));//x
					ds_list_add(allSprite, buffer_read(buff, buffer_s16));//y	
					ds_list_add(allSprite, buffer_read(buff, buffer_s16));//sprite_index	
					ds_list_add(allSprite, buffer_read(buff, buffer_s16));//image_index
					ds_list_add(allSprite, buffer_read(buff, buffer_s32));//image_blend
					ds_list_add(allSprite, buffer_read(buff, buffer_s32));//image_angle
					ds_list_add(allSprite, buffer_read(buff, buffer_string));//playerName
					nbPlayer++;
				}else if(type == OBJ_ITEM){
					ds_list_add(allSprite, buffer_read(buff, buffer_s16));//x
					ds_list_add(allSprite, buffer_read(buff, buffer_s16));//y	
					ds_list_add(allSprite, buffer_read(buff, buffer_s16));//sprite_index	
					ds_list_add(allSprite, buffer_read(buff, buffer_s16));//image_index
					ds_list_add(allSprite, buffer_read(buff, buffer_s16));//dir
					ds_list_add(allSprite, buffer_read(buff, buffer_string));//name
					ds_list_add(allSprite, buffer_read(buff, buffer_s16));//rank
					ds_list_add(allSprite, buffer_read(buff, buffer_s16));//dmg
				}
			
			}
		
		}else if(type == CLIENT_ITEM_SHOW){
			
			var itemNull = buffer_read(buff, buffer_s16);
			
			if(itemNull == 0){
				itemName = buffer_read(buff, buffer_string);
				itemX = buffer_read(buff, buffer_s16);
				itemY = buffer_read(buff, buffer_s16);
				itemRank = buffer_read(buff, buffer_s16);
				itemDmg = buffer_read(buff, buffer_s16);
				itemDesc = buffer_read(buff, buffer_string);
				showItem = true;
			}else{
				itemX = 0;
				itemY = 0;
				itemName = "";
				itemRank = -1;
				itemDmg = -1;
				itemDesc = "";
				showItem = false;
			}
			
		}
	}
}