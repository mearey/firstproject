/// @description Insert description here
// You can write your code in this editor
x_ = mouse_x+random_range(-10/man.accuracy,10/man.accuracy);
y_ = mouse_y+random_range(-10/man.accuracy,10/man.accuracy);
bounces = 1;
if keyboard_check_direct(vk_space) {
	image_angle = point_direction(x_,y_,x,y);
	direction = point_direction(x_,y_,x,y);
} else {
	image_angle = point_direction(x,y,x_,y_);
	direction = point_direction(x,y,x_,y_);
}
speed = 6;

if man.weapon == BubbleGun {
	sprite_index = BubbleS;
	speed = 3;
} else {
	sprite_index = bulletS;	
	speed = 6;
}