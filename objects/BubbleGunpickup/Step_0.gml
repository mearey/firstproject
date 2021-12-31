/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if point_distance(x,y,man.x,man.y) < 10 {
	Inventory.addItem(BubbleGun);
	man.removeGunFromPool(BubbleGunpickup);
	instance_destroy(self);
}