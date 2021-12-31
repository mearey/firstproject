/// @description Insert description here
// You can write your code in this editor

if point_distance(x,y,man.x,man.y) < 150 {
	timer --;
	if timer <= 0 {
		instance_create_depth(x,y+16,0,enemy);
		timer = random_range(100,600);
	}
}