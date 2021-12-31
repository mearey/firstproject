/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_pressed(mb_left) and point_distance(mouse_x, mouse_y, x_ + xx,y_ + yy) < 8 {
	Inventory.removeItem(item);
	Inventory.addItem(man.weapon);
	man.equip(item);
	instance_destroy(self);
}