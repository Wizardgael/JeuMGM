/// @funtion createItem(x, y, rank, id)

var temp = instance_create_layer(argument0, argument1, "Items", argument3);
temp.rank = argument2;
temp.alarm[0] = 0;
