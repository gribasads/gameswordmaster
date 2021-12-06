function ScriptSamuraiShot(){
	
	var _xx = x + lengthdir_x( 20 , image_angle ); // x da direção do disparo
	
	shotTime--;
	
	if( shotTime < 1 ){
	
		with (instance_create_layer( _xx , y - 25 , "Shoot" , obj_dagger )){
			
			speed = 10;									//velocidade do disparo
			direction = -90 + 90 * other.image_xscale;	//direção
			image_angle = direction;					//angulo
			
		}
		shotTime = 100;
	
	}

}