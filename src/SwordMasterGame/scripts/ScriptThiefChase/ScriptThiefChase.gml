// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScriptThiefChase(){
	sprite_index = spr_thief_run;
	if( distance_to_object(obj_player) < 50 ){
		ScriptThiefAttack();
	} 
	vir  = sign(obj_player.x - x);
	hspd = vir * 4;
	
	if( distance_to_object(obj_player) > raioDeVisao ){
		hspd = 0;
		sprite_index = spr_thief_stand;
	}
	if (place_meeting(x + 1 , y , obj_wall))
	{

	  vspd -= 0.7;

	}
}