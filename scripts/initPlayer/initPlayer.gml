var p = argument0;

p.invArme = ds_map_create();
p.invCasque = ds_map_create();
p.invPlastron = ds_map_create();
p.invBotte = ds_map_create();

ds_map_add(p.invArme, "name", "épée de départ");
ds_map_add(p.invArme, "sprite", sSword);
ds_map_add(p.invArme, "rank", RANK_NORMAL);
ds_map_add(p.invArme, "stat", 4);
ds_map_add(p.invArme, "desc", "une épée trouvée par terre");

ds_map_add(p.invCasque, "name", "casque de départ");
ds_map_add(p.invCasque, "sprite", sHelmet);
ds_map_add(p.invCasque, "rank", RANK_NORMAL);
ds_map_add(p.invCasque, "stat", 4);
ds_map_add(p.invCasque, "desc", "un casque acheté pas cher");

ds_map_add(p.invPlastron, "name", "plastron de départ");
ds_map_add(p.invPlastron, "sprite", sChesplate);
ds_map_add(p.invPlastron, "rank", RANK_NORMAL);
ds_map_add(p.invPlastron, "stat", 4);
ds_map_add(p.invPlastron, "desc", "un plastron acheté pas cher");

ds_map_add(p.invBotte, "name", "bottes de départ");
ds_map_add(p.invBotte, "sprite", sBoots);
ds_map_add(p.invBotte, "rank", RANK_NORMAL);
ds_map_add(p.invBotte, "stat", 4);
ds_map_add(p.invBotte, "desc", "des bottes achetées pas cher");