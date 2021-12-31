/// @description Insert description here
// You can write your code in this editor
if instance_exists(man) {
	if point_distance(x,y,man.x,man.y) < 10 {
		Inventory.addItem(sword);
		man.removeGunFromPool(swordpickup);
		instance_destroy(self);
	}
}