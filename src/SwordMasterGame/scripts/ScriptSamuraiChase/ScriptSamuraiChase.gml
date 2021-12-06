
function ScriptSamuraiChase(){

	
	vir  = sign(obj_player.x - x);	// persegue o x do Player
	hspd = vir * 4;					// define a velocidade horizontal
	
	sprite_index = spr_samurai_run; // muda o sprite para run
	
	if (place_meeting(x + 1 , y , obj_wall) || place_meeting(x - 1 , y , obj_wall)){ // se encostar no muro pela direita o pela esquerda

	  vspd -= 0.7; // pula

	} else {
		if( distance_to_object(obj_player) <= 4 ){ // se estiver perto do Player
		
		ScriptSamuraiAttack(); // ataca
		
		} 
	}
	


}