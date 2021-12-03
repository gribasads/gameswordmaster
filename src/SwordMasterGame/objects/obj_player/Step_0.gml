#region CONTROLES
key_right = keyboard_check(ord("D")) // Mapeia tecla d para direita
key_left = keyboard_check(ord("A")) // Mapeia tecla a para esquerda
key_jump = keyboard_check(vk_space) // mapeia espaço para pulo
key_shoot = keyboard_check_pressed(ord("X")) // mapeia a tecla de tiro
#endregion
//teste
#region MOVIMENTO
var move= key_right - key_left;

hspd = move * spd; // velocidade horizontal vezes a velocidade
vspd = vspd + grv; // trocar a direção

if(hspd !=0) image_xscale= sign(hspd);

//colisão horizontal
if place_meeting(x+hspd,y,obj_wall)
{
 while(!place_meeting(x+sign(hspd),y,obj_wall))
 {
  x=x+sign(hspd);
 }
 hspd=0;
}
x=x+hspd;

//colisão vertical
if place_meeting(x,y+vspd,obj_wall)
{
 while(!place_meeting(x,y+sign(vspd),obj_wall))
 {
  y = y + sign(vspd);
 }
 vspd=0;
}
y = y + vspd;

//JUMP

if place_meeting(x,y+1,obj_wall) and key_jump
{

  vspd-=9;

}
#endregion

#region VIDA

if(global.life < 1){
	game_restart();
}

#endregion


#region sprites de movimentação

if(keyboard_check(ord("X"))){
		
	sprite_index = spr_player_atack;
		
	if(image_index > image_number - 1){
			
		if(hspd != 0){
				
			sprite_index = spr_player_run;
				
		} else {
				
			sprite_index = spr_player_stand;
				
		} 
			
	}
} else {
		
	if(hspd != 0){
			
		sprite_index = spr_player_run;
			
	} else {
			
		sprite_index = spr_player_stand;
			
	} 
		
}

#endregion

#region PLAYER X SAMURAI

if(distance_to_object(obj_samurai) < 5){
	
	PlayerXSamurai();
	
}


#endregion