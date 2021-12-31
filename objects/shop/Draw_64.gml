/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);

if(global.inshop){
	instance_activate_object(man);
	//draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
	draw_healthbar(10, 10, 200, 20,man.pc,c_black,c_red,c_lime,0,true,true);
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_text(10, 30, man.points);
	instance_deactivate_object(man);
}