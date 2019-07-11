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
					var isPlayer = false;
					if(nbPlayer == index){
						ds_list_add(allSprite, 1);
						isPlayer = true;
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
					if(isPlayer){
						hp = buffer_read(buff, buffer_s16);
						maxHp = buffer_read(buff, buffer_s16);
						weapon[? "name"] =  buffer_read(buff, buffer_string);//Weapon Name
						weapon[? "sprite"] =  buffer_read(buff, buffer_s16);//Weapon Name
						weapon[? "rank"] = buffer_read(buff, buffer_s16);//Weapon Rank
						weapon[? "stat"] = buffer_read(buff, buffer_s16);//Weapon dmg
						weapon[? "desc"] = buffer_read(buff, buffer_string);//Weapon desc
						
						helmet[? "name"] =  buffer_read(buff, buffer_string);//Weapon Name
						helmet[? "sprite"] =  buffer_read(buff, buffer_s16);//Weapon Name
						helmet[? "rank"] = buffer_read(buff, buffer_s16);//Weapon Rank
						helmet[? "stat"] = buffer_read(buff, buffer_s16);//Weapon dmg
						helmet[? "desc"] = buffer_read(buff, buffer_string);//Weapon desc
						
						chestplate[? "name"] =  buffer_read(buff, buffer_string);//Weapon Name
						chestplate[? "sprite"] =  buffer_read(buff, buffer_s16);//Weapon Name
						chestplate[? "rank"] = buffer_read(buff, buffer_s16);//Weapon Rank
						chestplate[? "stat"] = buffer_read(buff, buffer_s16);//Weapon dmg
						chestplate[? "desc"] = buffer_read(buff, buffer_string);//Weapon desc
						
						boots[? "name"] =  buffer_read(buff, buffer_string);//Weapon Name
						boots[? "sprite"] =  buffer_read(buff, buffer_s16);//Weapon Name
						boots[? "rank"] = buffer_read(buff, buffer_s16);//Weapon Rank
						boots[? "stat"] = buffer_read(buff, buffer_s16);//Weapon dmg
						boots[? "desc"] = buffer_read(buff, buffer_string);//Weapon desc
						
						//
					}else{
						buffer_read(buff, buffer_s16);
						buffer_read(buff, buffer_string);//Weapon Name
						buffer_read(buff, buffer_s16);//Weapon Rank
						buffer_read(buff, buffer_s16);//Weapon dmg
						buffer_read(buff, buffer_string);//Weapon desc
						
						buffer_read(buff, buffer_s16);
						buffer_read(buff, buffer_string);//Weapon Name
						buffer_read(buff, buffer_s16);//Weapon Rank
						buffer_read(buff, buffer_s16);//Weapon dmg
						buffer_read(buff, buffer_string);//Weapon desc
						
						buffer_read(buff, buffer_s16);
						buffer_read(buff, buffer_string);//Weapon Name
						buffer_read(buff, buffer_s16);//Weapon Rank
						buffer_read(buff, buffer_s16);//Weapon dmg
						buffer_read(buff, buffer_string);//Weapon desc
						
						buffer_read(buff, buffer_s16);
						buffer_read(buff, buffer_string);//Weapon Name
						buffer_read(buff, buffer_s16);//Weapon Rank
						buffer_read(buff, buffer_s16);//Weapon dmg
						buffer_read(buff, buffer_string);//Weapon desc
					}
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
				itemType = buffer_read(buff, buffer_s16);
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