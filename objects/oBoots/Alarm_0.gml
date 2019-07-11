/// @description Insert description here
// You can write your code in this editor

if(rank == RANK_NORMAL){
	name = choose("épée nulle", "épée rouillée", "épée rafistolée");
	desc = "une " + name + " qui coupe pas";
}else if(rank == RANK_COMMUN){
	name = choose("épée en fer", "épée de l'herbe", "épée pas ouf");
	desc = "une " + name + " qui fait pas mal";
}else if(rank == RANK_RARE){
	name = choose("épée de feu", "épée rare", "épée cool");
	desc = "une " + name + " pas trop nulle";
}else if(rank == RANK_EPIC){
	name = choose("épée stylée", "épée goldée", "épée qui coupe");
	desc = "une " + name + " très rare";
}else if(rank == RANK_LEGENDARY){
	name = choose("Brisingr", "Andúril", "Master Sword");
	switch(name){
		case "Brisingr" : desc = "une épée qui brûle beaucoup";break;
		case "Andúril" : desc = "l'épée qui accompagnait le précieux";break; 
		case "Master Sword" : desc = "une épée qui appartenait a un héros de \nlégende";break; 
	}
}

event_inherited();