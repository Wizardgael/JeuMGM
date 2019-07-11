/// @funtion createItem(x, y,id ,rank, name, dmg, desc)

var temp = instance_create_layer(argument0, argument1, "Items", argument2);
temp.rank = argument3;
temp.image_index = temp.rank;
temp.name = argument4;
temp.dmg = argument5;
temp.desc = argument6;
temp.isReady = true;
