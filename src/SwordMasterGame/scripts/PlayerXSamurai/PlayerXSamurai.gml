function PlayerXSamurai(){
	if( sprite_index != spr_player_atack ){ // se não esriver atacando
		
		PlayerHit();						// aciona o script de hit
		
	} else {
		timeAttack--;						// diminui em 1 o tempo de ataque
		if(timeAttack == 0){				// quando o tempo de ataque acaba
			
			global.samuraiLife--;			// diminui em 1 o tempo de vida do Samurai
			timeAttack = 20;				// reseta o tempo de ataque
		}
	}
}