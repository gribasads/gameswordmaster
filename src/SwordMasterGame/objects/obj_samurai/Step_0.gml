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
 hspd = 0;
}
x = x + hspd;

//colisão vertical
if place_meeting(x,y+vspd,obj_wall)
{
 while(!place_meeting(x,y+sign(vspd),obj_wall))
 {
  y = y + sign(vspd);
 }
 vspd = 0;
}
y = y + vspd;

#endregion

#region Perseguindo

if( distance_to_object(obj_player) <= raioDeVisao ){
	
	ScriptSamuraiChase();
	
} 
 
#endregion

#region VIDA

if(global.samuraiLife < 1){
	instance_destroy();
}

#endregion