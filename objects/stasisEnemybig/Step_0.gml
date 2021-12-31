/// @description Insert description here
// You can write your code in this editor
if point_distance(x,y,camera.x,camera.y) < 150 {
	instance_create_depth(x,y,0,bigenemyO);
	instance_destroy(self);
}