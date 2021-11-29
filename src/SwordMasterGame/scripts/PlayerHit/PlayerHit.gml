// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerHit(){
	sprite_index = spr_player_hit;
	if(image_index > image_number - 1){
		global.life--;
		//PlayerAtack();
	}
}