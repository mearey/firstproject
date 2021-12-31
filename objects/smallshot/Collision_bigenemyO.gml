/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
part_type_direction(global.particle1,image_angle*0.8-180,image_angle*1.2-180,0,0);
part_type_direction(global.particle2,image_angle*0.8-180,image_angle*1.2-180,0,0);
part_type_direction(global.pointsmall,70,100,0,0);
part_particles_create(global.p_system, x + random_range(-5,5), y-16, global.pointsmall, 1);
part_type_direction(global.pointsmall,70,100,0,0);
part_particles_create(global.p_system, x + random_range(-5,5), y-16, global.pointsmall, 1);
man.points += 20;
instance_destroy(self);