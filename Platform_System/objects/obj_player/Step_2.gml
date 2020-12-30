/// @description Insert description here
// You can write your code in this editor

//Colisao Horizontal
if(place_meeting(x + velh, y, obj_plat_pai)){
	while(!place_meeting(x + sign(velh), y, obj_plat_pai)){
		x += sign(velh);
	}
	velh = 0;
}
x += velh;

//Colisao vertical
if(place_meeting(x, y + velv, obj_plat_pai)){
	while(!place_meeting(x, y + sign(velv), obj_plat_pai)){
		y += sign(velv);
	}
	velv = 0;
}



y += velv;