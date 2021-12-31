/// @description Insert description here
// You can write your code in this editor

var bbox_side;
if (direction>90 and direction<270) bbox_side = bbox_left; else bbox_side = bbox_right;
if (tilemap_get_at_pixel(global.tilemap, bbox_side + hspeed, bbox_top) != 0 or tilemap_get_at_pixel(global.tilemap, bbox_side + hspeed, bbox_bottom) != 0) {
	if sprite_index == BubbleS and bounces > 0 {
		direction += random_range(0,360);
		bounces--;
	} else {
		if sprite_index == BubbleS {
			part_type_orientation(global.deadbulletbubble, image_angle*0.6,image_angle*1.4,random_range(-10,10),0,0)
			part_type_direction(global.deadbulletbubble,image_angle*0.6-180,image_angle*1.4-180,0,0);
			part_particles_create(global.p_system, x, y, global.deadbulletbubble, 1);
		} else {
			part_type_orientation(global.deadbulletplayer, image_angle*0.6,image_angle*1.4,random_range(-10,10),0,0)
			part_type_direction(global.deadbulletplayer,image_angle*0.6-180,image_angle*1.4-180,0,0);
			part_particles_create(global.p_system, x, y, global.deadbulletplayer, 1);	
		}
		instance_destroy(self);
	}
}

if (direction>180) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(global.tilemap, bbox_left, bbox_side + vspeed) != 0 or tilemap_get_at_pixel(global.tilemap, bbox_right, bbox_side + vspeed) != 0) {
	if sprite_index == BubbleS and bounces > 0 {
		direction += random_range(0,360);
		bounces--;
	} else {
		if sprite_index == BubbleS {
			part_type_orientation(global.deadbulletbubble, image_angle*0.6,image_angle*1.4,random_range(-10,10),0,0)
			part_type_direction(global.deadbulletbubble,image_angle*0.6-180,image_angle*1.4-180,0,0);
			part_particles_create(global.p_system, x, y, global.deadbulletbubble, 1);
		} else {
			part_type_orientation(global.deadbulletplayer, image_angle*0.6,image_angle*1.4,random_range(-10,10),0,0)
			part_type_direction(global.deadbulletplayer,image_angle*0.6-180,image_angle*1.4-180,0,0);
			part_particles_create(global.p_system, x, y, global.deadbulletplayer, 1);	
		}
		instance_destroy(self);
	}
}

if sprite_index == BubbleS {
	direction += random_range(-10,10);
}