/// @description Start local game

global.serverName = oTextBox.text;
global.server = instance_create_layer(0,0,"Instances", oServer);

if(global.haveServer == false){
	show_debug_message("can't connect to server");	
}else{
	
	global.ip = "127.0.0.1";
	room_goto(ChoicePerso);

}
