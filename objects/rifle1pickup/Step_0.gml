/// @description Insert description here
// You can write your code in this editor
if point_distance(x,y,man.x,man.y) < 10 {
	Inventory.addItem(rifle1);
	man.removeGunFromPool(rifle1pickup);
	instance_destroy(self);
}