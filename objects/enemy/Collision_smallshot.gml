/// @description Insert description here

hp -= man.damage;
pc = (hp/3) * 100;
part_particles_create(global.p_system, x, y, global.particle1, 10);
part_particles_create(global.p_system, x, y, global.particle2, 10);

hit = 3;