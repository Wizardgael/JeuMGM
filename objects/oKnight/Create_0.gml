/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

ds_map_replace(invArme, "name", "épée de départ");
ds_map_replace(invArme, "sprite", sSword);
ds_map_replace(invArme, "rank", RANK_NORMAL);
ds_map_replace(invArme, "stat", 4);
ds_map_replace(invArme, "desc", "une épée trouvée par terre");

ds_map_replace(invCasque, "name", "casque de départ");
ds_map_replace(invCasque, "sprite", sHelmet);
ds_map_replace(invCasque, "rank", RANK_NORMAL);
ds_map_replace(invCasque, "stat", 4);
ds_map_replace(invCasque, "desc", "un casque acheté pas cher");

ds_map_replace(invPlastron, "name", "plastron de départ");
ds_map_replace(invPlastron, "sprite", sChesplate);
ds_map_replace(invPlastron, "rank", RANK_NORMAL);
ds_map_replace(invPlastron, "stat", 4);
ds_map_replace(invPlastron, "desc", "un plastron acheté pas cher");

ds_map_replace(invBotte, "name", "bottes de départ");
ds_map_replace(invBotte, "sprite", sBoots);
ds_map_replace(invBotte, "rank", RANK_NORMAL);
ds_map_replace(invBotte, "stat", 4);
ds_map_replace(invBotte, "desc", "des bottes achetées pas cher");

hp = 2000;
maxHp = hp;
