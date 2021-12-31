/// @description Insert description here
// You can write your code in this editor\

xpos = 50;
for (var i=0;i<array_length_1d(items);i++) {
	size = sprite_get_width(object_get_sprite(items[i]));
	draw_set_colour(c_gray);
	draw_rectangle(xpos-16,634,xpos+16,666,0);
	draw_set_colour(c_black);
	draw_rectangle(xpos-16,634,xpos+16,666,1);
	draw_sprite_ext(object_get_sprite(items[i]),0,xpos,650,32/size,32/size,0,-1,1);
	xpos+=64;
}