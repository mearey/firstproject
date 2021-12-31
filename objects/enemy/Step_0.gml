/// @description Insert description here
// You can write your code in this editor

if shotTimer = 0 {
	shotTimer = irandom_range(50,200);
	instance_create_depth(x,y,0,enemyBullet);
}

if movetimer = 0 {
	direction_ = point_direction(x,y,man.x,man.y);
} else {
	movetimer--;	
}

if hp <= 0 {
	man.points += 100;
	part_type_direction(global.pointbig,70,100,0,0);
	part_particles_create(global.p_system, x + random_range(-5,5), y-16, global.pointbig, 1);
	part_type_direction(global.pointbig,70,100,0,0);
	part_particles_create(global.p_system, x + random_range(-5,5), y-16, global.pointbig, 1);
	part_type_direction(global.pointbig,70,100,0,0);
	part_particles_create(global.p_system, x + random_range(-5,5), y-16, global.pointbig, 1);
	instance_destroy(self);
}

if point_distance(man.x,man.y,self.x,self.y) < 200 {
	timer++;
	if timer == 10 {
		if irandom(100) < 35 {
			direction_ = point_direction(x,y,man.y,man.x);
			speed = 1;
			movetimer = irandom(300);
			sprite_index = enemywalk;
		} else if irandom(100) < 35 {
			direction_ = point_direction(y,x,man.x,man.y);
			speed = 1;
			movetimer = irandom(300);
			sprite_index = enemywalk;
		} else {
			speed = 0;
			direction_ = point_direction(x,y,man.x,man.y);
			movetimer = irandom(300);
			sprite_index = enemyS;
		}
		timer = 0;
	}
} else {
	speed = 0;
	sprite_index = enemyS;
}
var bbox_side;
if (direction>90 and direction<270) bbox_side = bbox_left; else bbox_side = bbox_right;
if (tilemap_get_at_pixel(global.tilemap, bbox_side + hspeed, bbox_top) != 0 or tilemap_get_at_pixel(global.tilemap, bbox_side + hspeed, bbox_bottom) != 0) {
	if (direction>90 and direction<270) {
		direction_ = 0;
		x = x - (x mod 16) + 14 - (bbox_right-x);
	}
	if (direction<90 or direction>270) {
		direction_ = 180;
		x = x - (x mod 16) + 1 - (bbox_left-x);
	}
	timer = 0;
	movetimer = 2;
	speed = 1;
}

if (direction>180) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(global.tilemap, bbox_left, bbox_side + vspeed) != 0 or tilemap_get_at_pixel(global.tilemap, bbox_right, bbox_side + vspeed) != 0) {
	if (direction>180) {
		direction_ = 90;
		y = y - (y mod 16) + 14 - (bbox_bottom-y);
	}
	if (direction<180) {
		direction_ = 270;
		y = y - (y mod 16) + 1 - (bbox_top-y);
	}
	timer = 0;
	movetimer = 2;
	speed = 1;
}

if hit > 0 {
	hit--;
	sprite_index = enemyHit;
}

direction = direction_;
shotTimer--;