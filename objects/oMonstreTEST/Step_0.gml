/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var instPlayer = instance_nearest(x,y,oPlayer);

if ( 
	( 
		(0 < instPlayer.x - x && instPlayer.x - x < 250) 
		|| (0 < x - instPlayer.x && x - instPlayer.x < 250)
	) 
	&& 
	( 
		( 0 < instPlayer.y - y && instPlayer.y - y < 250 ) 
		|| ( 0 < y - instPlayer.y && y - instPlayer.y < 250  ) 
	) 
   )
{
	move_towards_point(oPlayer.x, oPlayer.y, spd);
}
else 
{
	if(x != xstart && y != ystart)
	{
		move_towards_point(xstart, ystart, spd);	
	}

}