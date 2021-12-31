/// @description Insert description here
// You can write your code in this editor

if instance_exists(man) {
	x = man.x;
	y = man.y;
}

if keyboard_check_pressed(vk_escape) {
	paused = !paused;
	if paused {
		damage = man.damage;
		accuracy = man.accuracy;
		firerate = man.firerate;
		screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0); 
		instance_deactivate_all(1);
	}
}

if paused != true {
	instance_activate_all();
}