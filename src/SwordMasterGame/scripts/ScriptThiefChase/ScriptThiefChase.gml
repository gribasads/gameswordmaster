function ScriptThiefChase(){
	
	vir  = sign(obj_player.x - x);
	hspd = vir * 4;
	sprite_index = spr_thief_run;
	
	if (place_meeting(x + 1 , y , obj_wall) || place_meeting(x - 1 , y , obj_wall)){

	  vspd -= 0.7;

	} else {
		if( distance_to_object(obj_player) < 50 ){
		
		ScriptThiefAttack();
		
		} 
	}
}