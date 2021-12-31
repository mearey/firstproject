/// @description Insert description here
// You can write your code in this editor
part_type_orientation(global.deadbullet, image_angle*0.6,image_angle*1.4,random_range(-10,10),0,0)
part_type_direction(global.deadbullet,image_angle*0.6-180,image_angle*1.4-180,0,0);
part_particles_create(global.p_system, x, y, global.deadbullet, 1);
instance_destroy(self);