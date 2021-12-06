if(sprite_index == spr_player_atack){	// se estiver atacando
	instance_destroy(other);			// destroi o outro objeto
	global.score += 200;				// aumenta o score em 200
}
