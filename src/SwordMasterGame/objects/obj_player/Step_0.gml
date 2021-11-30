#region CONTROLES
key_right = keyboard_check(ord("E")) // Mapeia tecla d para direita
key_left = keyboard_check(ord("Q")) // Mapeia tecla a para esquerda
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
  y=y+sign(vspd);
 }
 vspd=0;
}
y=y+vspd;

//JUMP

if place_meeting(x,y+1,obj_wall) and key_jump
{
  vspd -= 10;
}
#endregion

/*#region TIROS
var flipped =direction;
var gun_x = (x+4)*(flipped);
var _xx = x + lengthdir_x(20,image_angle);
var y_offset= lengthdir_y(-20,image_angle);

if(key_shoot and global.bullets > 0)
{
with (instance_create_layer(_xx,y+10,"Shoot",obj_shoot))
{
global.bullets--;
//velocidade do tiro
speed= 20;
//direção
direction = -90 + 90 * other.image_xscale;
//angulo
image_angle=direction;
}
}
#endregion*/

if(global.life < 1){
	game_restart();
}

show_debug_message(global.life)

#region sprites de movimentação
	/*if(hspd != 0) image_xscale = sign(hspd);*/
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