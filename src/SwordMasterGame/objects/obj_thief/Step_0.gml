#region MOVIMENTO
vspd = vspd + grv; // trocar a direção

if(hspd != 0) image_xscale= sign(hspd);

//colisão horizontal
if place_meeting(x+hspd,y,obj_wall)
{
 while(!place_meeting(x+sign(hspd),y,obj_wall))
 {
  x=x+sign(hspd);
 }
 hspd=0;
}
x=x+hspd;

//colisão vertical
if place_meeting(x,y+vspd,obj_wall)
{
 while(!place_meeting(x,y+sign(vspd),obj_wall))
 {
  y=y+sign(vspd);
 }
 vspd=0;
}
y=y+vspd;

#endregion

#region Perseguindo

function atacar(){
	sprite_index = spr_thief_attack;
}

function perseguir(){
	vir  = sign(obj_player.x - x);
	hspd = vir * 4;
	
	if( distance_to_object(obj_player) > raioDeVisao){
		hspd = 0;
		sprite_index = spr_thief_stand;
	}
	
	if( distance_to_object(obj_player) < 30){
		atacar();
	} 
}



if( distance_to_object(obj_player) <= raioDeVisao){	
	sprite_index = spr_thief_run;
	perseguir();
	
} 
 

#endregion