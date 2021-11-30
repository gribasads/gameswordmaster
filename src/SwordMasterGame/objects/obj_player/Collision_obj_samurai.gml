if(sprite_index == spr_player_atack){
	instance_destroy(other)
} else {
	sprite_index = spr_player_hit;
	if(image_index > image_number - 1){
		global.life--;
		sprite_index = spr_player_atack;
		instance_destroy(other);
	}
}
