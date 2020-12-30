/// @description Insert description here
// You can write your code in this editor


chao = place_meeting(x, y+1 ,obj_plat); //Checando se toca no chao

//----------------Controles

var left, right, jump;

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
jump = keyboard_check(ord("K"));


velh = (right - left) * max_velh; //Aplicar velocidade horizontal

//Aplicando velocidade vertical (grav)

if(!chao){ //Nao estou no chao
	velv += grav
}
else{ //se estiver no chao
	if(jump){
		velv = -max_velv;
	}
}

//Limitar velocidade
velv = clamp(velv, -max_velv, max_velv);