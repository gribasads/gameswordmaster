#region CONTROLES
key_right = keyboard_check(ord("D")) // Mapeia tecla d para direita
key_left = keyboard_check(ord("A")) // Mapeia tecla a para esquerda
key_jump = keyboard_check(vk_space) // mapeia espaço para pulo
key_shoot = keyboard_check_pressed(ord("X")) // mapeia a tecla de tiro
#endregion
//teste
#region MOVIMENTO
var move= key_right - key_left; // direção

hspd = move * spd; // velocidade horizontal vezes a velocidade
vspd = vspd + grv; // velocidade vertical aumenta simulando a gravidade

if(hspd !=0) image_xscale= sign(hspd);

//colisão horizontal
if place_meeting(x+hspd,y,obj_wall)  
{
	while(!place_meeting(x+sign(hspd),y,obj_wall))
	{
		x = x + sign(hspd); // altera o x do player de acordo com o a direção da velocidade horizontal
	}
	hspd = 0;
}
x = x + hspd; // altera o x do player de acordo com a velocidade horizontal

//colisão vertical
if place_meeting(x,y+vspd,obj_wall)
{
	while(!place_meeting(x,y+sign(vspd),obj_wall))
	{
		y = y + sign(vspd); // altera o y do player de acordo com o a direção da velocidade vertical
	}
	 vspd = 0; 
}
y = y + vspd; // altera o y do player de acordo com a velocidade vertical

//JUMP

if place_meeting(x,y+1,obj_wall) and key_jump // se estiver em contato com o chão e pressiona a tecla de pulo
{

  vspd -= 9; // joga o player pra cima simulando um pulo

}
#endregion

#region VIDA

 
if(global.life < 1){	// caso tenha menos de 1 vida
	
	room_goto(rm_dead); // redireciona para a room de game over
	
}


#endregion


#region sprites de movimentação

if(keyboard_check(ord("X"))){ // caso esteja pressionando  "X"
		
	sprite_index = spr_player_atack; // muda o sprite para atacando
		
	if(image_index > image_number - 1){
			
		if(hspd != 0){
				
			sprite_index = spr_player_run;
				
		} else {
				
			sprite_index = spr_player_stand;
				
		} 
			
	}
} else {
		
	if(hspd != 0){							// caso não esteja parado
			
		sprite_index = spr_player_run;		//muda o sprite para run
			
	} else {					
			
		sprite_index = spr_player_stand;	// muda o sprite para stand
			
	} 
		
}

#endregion

#region PLAYER X SAMURAI

if(distance_to_object(obj_samurai) < 5){ // se a distancia do Samurai for menor que 5
	
	PlayerXSamurai();					 // ativa o script da luta contra o Samurai
	
}

#endregion
