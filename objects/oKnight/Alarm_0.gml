/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(position_meeting(clientMouseX, clientMouseY, oItem)){

	var item = instance_nearest(clientMouseX, clientMouseY, oItem);
	if(point_distance(x, y, item.x, item.y) < 100){
	
		if(item.type == ITEM_TYPE_SWORD){
			
			createItemWith(item.x, item.y, oSword, invArme[? "rank"], invArme[? "name"], invArme[? "dmg"], invArme[? "desc"])
			invArme[? "name"] = item.name;
			invArme[? "rank"] = item.rank;
			invArme[? "stat"] = item.stat;
			invArme[? "desc"] = item.desc;
			invArme[? "sprite"] = item.sprite_index;
			instance_destroy(item);
			
		}else if(item.type == ITEM_TYPE_HELMET){
			
			createItemWith(item.x, item.y, oHelmet, invCasque[? "rank"], invCasque[? "name"], invCasque[? "dmg"], invCasque[? "desc"])
			invCasque[? "name"] = item.name;
			invCasque[? "rank"] = item.rank;
			invCasque[? "stat"] = item.stat;
			invCasque[? "desc"] = item.desc;
			invCasque[? "sprite"] = item.sprite_index;
			instance_destroy(item);
			
		}else if(item.type == ITEM_TYPE_CHESTPLATE){
			
			createItemWith(item.x, item.y, oChestplate, invPlastron[? "rank"], invPlastron[? "name"], invPlastron[? "dmg"], invPlastron[? "desc"])
			invPlastron[? "name"] = item.name;
			invPlastron[? "rank"] = item.rank;
			invPlastron[? "stat"] = item.stat;
			invPlastron[? "desc"] = item.desc;
			invPlastron[? "sprite"] = item.sprite_index;
			instance_destroy(item);
			
		}else if(item.type == ITEM_TYPE_BOOT){
			
			createItemWith(item.x, item.y, oBoots, invBotte[? "rank"], invBotte[? "name"], invBotte[? "dmg"], invBotte[? "desc"])
			invBotte[? "name"] = item.name;
			invBotte[? "rank"] = item.rank;
			invBotte[? "stat"] = item.stat;
			invBotte[? "desc"] = item.desc;
			invBotte[? "sprite"] = item.sprite_index;
			instance_destroy(item);
			
		}
		
	}
		
}