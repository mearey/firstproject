/// @description Insert description here
// You can write your code in this editor
if invincibility <= 0 {
	hp -= man.damage*2;
	pc = (hp/10) * 100;
	part_particles_create(global.p_system, x, y, global.particle1, 10);
	part_particles_create(global.p_system, x, y, global.particle2, 10);
	invincibility = 5;
	direction_ = point_direction(man.x,man.y,x,y);
	timer = 0;
	movetimer = 20;
	speed = 5;
} else {
	invincibility--;	
}
