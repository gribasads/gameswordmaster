function PlayerAtack(){
	instance_destroy(other);	// destroi o outro personagem
	global.score += 100;		// aumenta em 100 o score
}