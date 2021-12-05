global.life--;
instance_destroy(other);
sprite_index = spr_player_hit;
if(image_index > image_number - 1){
		
	sprite_index = spr_player_stand;
		
}
