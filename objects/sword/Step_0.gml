/// @description Insert description here
// You can write your code in this 
if cooldown > 0 {
	cooldown -= 1;	
}

if instance_exists(man) and thrown == false {
	if (mouse_x > man.x) {
		x = man.x + 8;
	} else {
		x = man.x - 8;
	}
	speed = 0;
	y = man.y - 2;
}

if !mouse_check_button(mb_right) {
	throwtimer = 50;
	thrown = false;
}

if mouse_check_button(mb_left) and thrown == false {
	image_angle += 30;
	direction += 30;
	sprite_index = swordswing;
} else if mouse_check_button(mb_right) and throwtimer > 0 and cooldown == 0 {
	thrown = true;
	throwtimer -= 1;
	image_angle = point_direction(x,y,mouse_x,mouse_y) - 30;
	direction = point_direction(x,y,mouse_x,mouse_y) - 30;
	sprite_index = swordswing;
	speed = 5;
} else if thrown == false {
	image_angle = point_direction(x,y,mouse_x,mouse_y) - 30;
	direction = point_direction(x,y,mouse_x,mouse_y) - 30;
	sprite_index = weaponpickup;
}

if throwtimer <= 0 {
	thrown = false;
	throwtimer = 50;
	cooldown = 200;
}