function PlayerXSamurai(){
	if( sprite_index != spr_player_atack ){
		
		sprite_index = spr_player_hit;
		timeHit--;
		
		if(timeHit == 0){
			
			PlayerHit();
			timeHit = 4;
			
		}
	} else {
		timeAttack--;
		if(timeAttack == 0){
			
			global.samuraiLife--;
			timeAttack = 20;
		}
	}
}