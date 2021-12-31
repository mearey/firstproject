/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);

if(paused){
	draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
    draw_text(350, 350, "PAUSED");
	draw_set_halign(vk_left);
	draw_text(70, 70, "Damage: " + string(damage));
	draw_text(70, 90, "Fire Rate: " + string(firerate));
	draw_text(70, 110, "Accuracy: " + string(accuracy));
}