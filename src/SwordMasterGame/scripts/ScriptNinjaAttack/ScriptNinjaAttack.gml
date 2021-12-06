function ScriptNinjaAttack(){
	
	var _xx = x + lengthdir_x( 20 , image_angle ); // x da direção do disparo
	var _yy = y + lengthdir_y( 1 , image_angle );  // y da direção do disparo 
	
	shotTime--;
	
	if( shotTime < 1 ){
	
		with (instance_create_layer( _xx , _yy , "Shoot" , obj_dagger )){
			//velocidade do tiro
			speed = 10;
			//direção
			direction = -90 + 90 * other.image_xscale;
			//angulo
			image_angle = direction;
		}
		shotTime = 100;
	
	}

}