/// @description Insert description here
// You can write your code in this editor

var count = ds_list_size(socketList);

if(count > 0){
	
	global.playerBuffer = playerBuffer;
	
	buffer_seek(playerBuffer, buffer_seek_start, 0);
	
	var nbItem = 0;
	for(var i = 0; i < instance_number(oItem); i++){
		var t = instance_find(oItem, i);
		if(t.isReady)
		nbItem++;
	}
	
	var nbInst = global.playerTotal + nbItem;
	
	
	buffer_write(playerBuffer, buffer_s16, CLIENT_STEP_SHOW);
	buffer_write(playerBuffer, buffer_u32, nbInst);//nb de sprite
	
	buffer_write(playerBuffer, buffer_s16, 0);//posX
	buffer_write(playerBuffer, buffer_s16, 0);//posY
	buffer_write(playerBuffer, buffer_s16, 0);//index du joueur
	
	//SEND ITEM
	for(var j = 0; j < instance_number(oItem); j++){
		var temp = instance_find(oItem, j);
		if(temp.isReady){
			buffer_write(global.playerBuffer, buffer_s16, OBJ_ITEM);
			buffer_write(global.playerBuffer, buffer_s16, temp.x);
		    buffer_write(global.playerBuffer, buffer_s16, temp.y);
		    buffer_write(global.playerBuffer, buffer_s16, temp.sprite_index);
		    buffer_write(global.playerBuffer, buffer_s16, temp.image_index);
			buffer_write(global.playerBuffer, buffer_s16, temp.dir);
		    buffer_write(global.playerBuffer, buffer_string, temp.name);
			buffer_write(global.playerBuffer, buffer_s16, temp.rank);
			buffer_write(global.playerBuffer, buffer_s16, temp.stat);
		}
	}
	
	//SEND PLAYER
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
		//STATS
		buffer_write(global.playerBuffer, buffer_s16, temp.hp);
		buffer_write(global.playerBuffer, buffer_s16, temp.maxHp);
		//INVENTAIRE
		//arme
		buffer_write(global.playerBuffer, buffer_string, temp.invArme[? "name"]);
		buffer_write(global.playerBuffer, buffer_s16, temp.invArme[? "sprite"]);
		buffer_write(global.playerBuffer, buffer_s16, temp.invArme[? "rank"]);
		buffer_write(global.playerBuffer, buffer_s16, temp.invArme[? "stat"]);
		buffer_write(global.playerBuffer, buffer_string, temp.invArme[? "desc"]);
		//casque
		buffer_write(global.playerBuffer, buffer_string, temp.invCasque[? "name"]);
		buffer_write(global.playerBuffer, buffer_s16, temp.invCasque[? "sprite"]);
		buffer_write(global.playerBuffer, buffer_s16, temp.invCasque[? "rank"]);
		buffer_write(global.playerBuffer, buffer_s16, temp.invCasque[? "stat"]);
		buffer_write(global.playerBuffer, buffer_string, temp.invCasque[? "desc"]);
		//plastron
		buffer_write(global.playerBuffer, buffer_string, temp.invPlastron[? "name"]);
		buffer_write(global.playerBuffer, buffer_s16, temp.invPlastron[? "sprite"]);
		buffer_write(global.playerBuffer, buffer_s16, temp.invPlastron[? "rank"]);
		buffer_write(global.playerBuffer, buffer_s16, temp.invPlastron[? "stat"]);
		buffer_write(global.playerBuffer, buffer_string, temp.invPlastron[? "desc"]);
		//bottes
		buffer_write(global.playerBuffer, buffer_string, temp.invBotte[? "name"]);
		buffer_write(global.playerBuffer, buffer_s16, temp.invBotte[? "sprite"]);
		buffer_write(global.playerBuffer, buffer_s16, temp.invBotte[? "rank"]);
		buffer_write(global.playerBuffer, buffer_s16, temp.invBotte[? "stat"]);
		buffer_write(global.playerBuffer, buffer_string, temp.invBotte[? "desc"]);
	}
	
	var buffer_size = buffer_tell(playerBuffer);
	
	for(var i = 0; i < count; i++){
		var sock = socketList[| i];
		
		buffer_seek(playerBuffer, buffer_seek_start, 6);
		
		var inst = ds_map_find_value(clients, sock);
		
		buffer_write(playerBuffer, buffer_s16, inst.x);
		buffer_write(playerBuffer, buffer_s16, inst.y);
		
		var index = 0;
		for(var j = 0; j < instance_number(oPlayer); j++){
			var temp = instance_find(oPlayer, j);
			if(temp.sock == sock){
				index = j;	
			}
		}
		buffer_write(playerBuffer, buffer_s16, index);
		
		network_send_packet(sock, playerBuffer, buffer_size);
	}
	
}