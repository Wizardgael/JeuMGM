/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

ds_map_add(invArme, "name", "épée de départ");
ds_map_add(invArme, "sprite", sSword);
ds_map_add(invArme, "rank", RANK_NORMAL);
ds_map_add(invArme, "stat", 4);
ds_map_add(invArme, "desc", "une épée trouvée par terre");

ds_map_add(invCasque, "name", "casque de départ");
ds_map_add(invCasque, "sprite", sHelmet);
ds_map_add(invCasque, "rank", RANK_NORMAL);
ds_map_add(invCasque, "stat", 4);
ds_map_add(invCasque, "desc", "un casque acheté pas cher");

ds_map_add(invPlastron, "name", "plastron de départ");
ds_map_add(invPlastron, "sprite", sChesplate);
ds_map_add(invPlastron, "rank", RANK_NORMAL);
ds_map_add(invPlastron, "stat", 4);
ds_map_add(invPlastron, "desc", "un plastron acheté pas cher");

ds_map_add(invBotte, "name", "bottes de départ");
ds_map_add(invBotte, "sprite", sBoots);
ds_map_add(invBotte, "rank", RANK_NORMAL);
ds_map_add(invBotte, "stat", 4);
ds_map_add(invBotte, "desc", "des bottes achetées pas cher");

hp = 2000;
maxHp = hp;
