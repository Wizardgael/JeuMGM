/// @description Insert description here
// You can write your code in this editor

randomise();

rank = RANK_COMMUN;
var ran = irandom(100);

if(ran < 40){
	rank = RANK_NORMAL;
}else if(ran < 70){
	rank = RANK_COMMUN;
}else if(ran < 90){
	rank = RANK_RARE;
}else if(ran < 97){
	rank = RANK_EPIC;
}else{
	rank = RANK_LEGENDARY;
}

stat =  5 + irandom(3) * rank;
name = "un item";
desc = "un petit item qui n'a pas encore de \ndescription";