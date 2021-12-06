
function PlayerHit(){
	/*sprite_index = spr_player_hit;		// muda o sprite para hit

	if(image_index > image_number - 1){		// quando o sprite de hit termina
		
		global.life--;						// diminui 1 da vida
		
		
	}*/
	sprite_index = spr_player_hit;			// muda o sprite para hit
		timeHit--;							// diminui 1 do tempo do hit
		
		if(timeHit == 0){					// quando o tempo do hit acabar
			
			global.life--;					// aciona o script de hit
			timeHit = 8;					// e reseta o tempo de hit
			
		}
}