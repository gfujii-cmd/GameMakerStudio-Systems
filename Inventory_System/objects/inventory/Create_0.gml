/// @description Insert description here
// You can write your code in this editor

//-----------------------------inventario
depth = -1;
cell_size = 32;
scale = 2;

show_inventory = true;

inv_slots = 17;
inv_slots_width = 8;
inv_slots_height = 3;

x_buffer = 2;
y_buffer = 4;

//seta a largura e a altura baseada no sprite
inv_ui_width = 288;
inv_ui_height = 192;

//pega o tamanho da GUI
gui_widht = display_get_gui_width();
gui_height = display_get_gui_height();

//conta para centralizar  e escalar o inventario
inv_UI_x = (gui_widht/2) - (inv_ui_width * 0.5 * scale);
inv_UI_y = (gui_height/2) - (inv_ui_height * 0.5 * scale);

//dsgrid
info_x = inv_UI_x + (9 *scale);
info_y = inv_UI_y + (9*scale);

//atribui o sprite do inventario em uma variavel
spr_inv_UI = spr_inventory_UI;
spr_inv_items = spr_inventory_items;

spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;
spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size;

slots_x = info_x;
slots_y = inv_UI_y + (40 * scale);


//-----------------Informacoes do player

ds_player_info = ds_grid_create(2,4);
var info_grid = ds_player_info; //boa pratica com data structures
info_grid[# 0,0] = "Gold";
info_grid[# 0,1] = "Silver";
info_grid[# 0,2] = "Copper";
info_grid[# 0,3] = "Name";

info_grid[# 1,0] = irandom_range(0,99);
info_grid[# 1,1] = irandom_range(0,99);
info_grid[# 1,2] = irandom_range(0,99);
info_grid[# 1,3] = "Player";

//-----------------Inventario
ds_inventory = ds_grid_create(2, inv_slots);

//items -- tenha certeza de que a ordem no enum seja a mesma ordem no sprite
enum item {
	none				= 0,
	tomato			= 1,
	potato			= 2,
	carrot			= 3,
	artichoke		= 4,
	chilli				= 5,
	gourd			= 6,
	corn				= 7,
	wood				= 8,
	stone				= 9,
	bucket			= 10,
	chair				= 11,
	picture			= 12,
	axe					= 13,
	potion			= 14,
	starfish			= 15,
	mushroom	= 16,
	height			= 17,
	
}


var yy = 0 repeat(inv_slots){
	ds_inventory[# 0, yy] = irandom_range(1, item.height -1);
	ds_inventory[# 1, yy] = irandom_range(1,10);
	
	yy++;
}
