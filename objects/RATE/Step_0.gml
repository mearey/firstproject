/// @description Insert description here
// You can write your code in this editor
if instance_exists(man) {
	if point_distance(x,y,man.x,man.y) < 50 {
		if (keyboard_check_pressed(ord("E"))) {
			if (man.points >= cost) {
				man.points -= cost;
				man.basefirerate += 0.3;
				man.calculateStats();
				instance_destroy(self);
			}
		}
	}
}