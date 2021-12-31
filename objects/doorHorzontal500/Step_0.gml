/// @description Insert description here
// You can write your code in this editor
if instance_exists(man) {
	if point_distance(x,y,man.x,man.y) < 50 {
		if (keyboard_check_pressed(ord("E"))) {
			if (man.points >= cost) {
				man.points -= cost;
				tilemap_set_at_pixel(global.tilemap,0,x,y+17);
				tilemap_set_at_pixel(global.tilemap,0,x,y+33);
				instance_destroy(self);
			}
		}
	}
}