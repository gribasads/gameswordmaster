//criando a tela de gameover
if(game_over)
{
	//pegando algumas infos
	var x1 = camera_get_view_x(view_camera[0])
	var w = camera_get_view_width(view_camera[0])
	var x2 = x1 + w;
	var meio_w =x1 +w /2;
	var y1 = camera_get_view_y(view_camera[0])
	var h = camera_get_view_height(view_camera[0])
	var y2 = y1 +h;
	var meio_h = y1 + h /2;
	
		var qtd= h*.15;
		valor = lerp(valor , 1 ,.01);
	//escurecer a tela
	draw_set_color(c_black);
	draw_set_alpha(valor-.3);
	draw_rectangle(x1,y1,x2,y2,false);
	
	

	
	
	
	//Desenhando o retangulo de cima
	
	draw_set_color(c_black);
	draw_set_alpha(1);
	draw_rectangle(x1,y1,x2,y1+qtd * valor,false);	
	
	//Desenhando o retangulo de baixo
	draw_rectangle(x1,y2,x2,y2-qtd * valor,false);
	
	draw_set_alpha(1);
	draw_set_color(-1);
	
	//delay gameover
	if(valor >= .85){
	contador=lerp(contador,1,.01);
	//escrevendo game over
	draw_set_alpha(contador);
	draw_set_font(fnt_gameover);
	draw_set_valign(1);
	draw_set_halign(1);
	//sombra
	draw_set_color(c_red);
	draw_text(meio_h+1,meio_h+1,"Thank You For Playing!");
	//texto
	draw_set_color(c_white);
	draw_text(meio_h,meio_h,"Thank You For Playing!");
	draw_set_font(-1);	
	draw_set_valign(-1);
	draw_set_halign(-1);
	draw_set_alpha(-1);
	}
	
}