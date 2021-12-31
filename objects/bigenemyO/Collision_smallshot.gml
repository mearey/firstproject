/// @description Insert description here
// You can write your code in this editor
hp -= man.damage;
pc = (hp/10) * 100;
part_particles_create(global.p_system, x, y, global.particle1, 10);
part_particles_create(global.p_system, x, y, global.particle2, 10);

hit = 3;