/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
x = man.x;
y = man.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);
direction = point_direction(x,y,mouse_x,mouse_y);
if instance_exists(man) {
	if (mouse_x > man.x) {
		x = man.x + 8;
		image_yscale = 1;
	} else {
		x = man.x - 8;
		image_yscale = -1;
	}
	
	y = man.y - 2
}